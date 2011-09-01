#include "AnnotationWidget.h"
#include "ui_AnnotationWidget.h"
#include "ontology_tree/TreeModel.h"
#include "NaMainWindow.h"
#include "../entity_model/Entity.h"
#include "../entity_model/Ontology.h"
#include "../../webservice/impl/ConsoleObserverServiceImpl.h"
#include "../utility/ConsoleObserver.h"
#include <QtGui>

#define LABEL_NONE "None"
#define LABEL_CONSOLE_DICONNECTED "Console not connected"
#define LABEL_CONSOLE_CONNECTED "Console connected"
#define BUTTON_CONNECT "Connect"
#define BUTTON_CONNECTING "Connecting..."
#define BUTTON_DISCONNECT "Disconnect"
#define BUTTON_DISCONNECTING "Disconnecting..."

AnnotationWidget::AnnotationWidget(QWidget *parent) : QFrame(parent), ui(new Ui::AnnotationWidget),
    ontology(0),
    consoleObserverService(0),
    consoleObserver(0),
    naMainWindow(0)
{
    ui->setupUi(this);
    showDisconnected();
}

AnnotationWidget::~AnnotationWidget()
{
    if (ui != 0) delete ui;
    if (consoleObserver != 0) delete consoleObserver;
    if (ontology != 0) delete this->ontology;
    consoleObserverService->stopServer(); // will delete itself later
}

void AnnotationWidget::setMainWindow(NaMainWindow *mainWindow)
{
    naMainWindow = mainWindow;
}

void AnnotationWidget::setOntology(Ontology *ontology)
{
    // Clean up memory from previous ontology if necessary
    if (this->ontology != 0) delete this->ontology;
    this->ontology = ontology;

    if (ontology->root() != NULL && ontology->root()->name != NULL)
    {
        ui->ontologyTreeTitle->setText(*ontology->root()->name);
    }
    else {
        showOntologyError("Error");
    }

    TreeModel *treeModel = new TreeModel(ontology);
    ui->ontologyTreeView->setModel(treeModel);
    ui->ontologyTreeView->expandAll();
    ui->ontologyTreeView->setVisible(true);
    ui->ontologyTreeView->header()->moveSection(1,0);
    ui->ontologyTreeView->resizeColumnToContents(0);
    ui->ontologyTreeView->resizeColumnToContents(1);
}

void AnnotationWidget::showOntologyError(const QString & text)
{
    ui->ontologyTreeTitle->setText(text);
    ui->ontologyTreeView->setVisible(false);
}

void AnnotationWidget::showErrorDialog(const QString & text)
{
    QMessageBox msgBox(QMessageBox::Critical, "Error", text, QMessageBox::Ok, this);
    msgBox.exec();
}

void AnnotationWidget::showDisconnected() {

    // Clear the ontology
    if (this->ontology != 0) delete this->ontology;
    this->ontology = 0;
    ui->ontologyTreeView->setModel(NULL);
    ui->ontologyTreeTitle->setText(LABEL_NONE);

    // Clear the annotations
    // TODO: add this later

    // Reset the console link
    ui->consoleLinkLabel->setText(LABEL_CONSOLE_DICONNECTED);
    ui->consoleLinkButton->setText(BUTTON_CONNECT);
    ui->consoleLinkButton->setEnabled(true);
    ui->consoleLinkButton->disconnect();
    connect(ui->consoleLinkButton, SIGNAL(clicked()), this, SLOT(consoleConnect()));
}

void AnnotationWidget::consoleConnect() {

    ui->consoleLinkButton->setText(BUTTON_CONNECTING);
    ui->consoleLinkButton->setEnabled(false);

    consoleObserver = new ConsoleObserver(naMainWindow);
    connect(consoleObserver, SIGNAL(openMulticolorImageStack(QString)), naMainWindow, SLOT(openMulticolorImageStack(QString)));
    connect(consoleObserver, SIGNAL(openOntology(Ontology*)), this, SLOT(setOntology(Ontology*)));

    consoleObserverService = new obs::ConsoleObserverServiceImpl();

    if (consoleObserverService->errorMessage()!=0)
    {
        QString msg = QString("Could not connect to the Console: %1").arg(*consoleObserverService->errorMessage());
        showErrorDialog(msg);
        showDisconnected();
        return;
    }

    qDebug() << "Received console approval to run on port:"<<consoleObserverService->port();

    connect(consoleObserverService, SIGNAL(ontologySelected(long)), consoleObserver, SLOT(ontologySelected(long)));
    connect(consoleObserverService, SIGNAL(entitySelected(long)), consoleObserver, SLOT(entitySelected(long)));
    connect(consoleObserverService, SIGNAL(entityViewRequested(long)), consoleObserver, SLOT(entityViewRequested(long)));
    connect(consoleObserverService, SIGNAL(annotationsChanged(long)), consoleObserver, SLOT(annotationsChanged(long)));
    consoleObserverService->startServer();

    if (consoleObserverService->error!=0)
    {
        consoleObserverService->stopServer(); // will delete itself later
        qDebug() << "Could not start Console observer, error code:" << consoleObserverService->error;
        QString msg = QString("Could not bind to port %1").arg(consoleObserverService->port());
        showErrorDialog(msg);
        showDisconnected();
        return;
    }

    consoleObserverService->registerWithConsole();

    if (consoleObserverService->errorMessage()!=0)
    {
        consoleObserverService->stopServer(); // will delete itself later
        QString msg = QString("Could not register with the Console: %1").arg(*consoleObserverService->errorMessage());
        showErrorDialog(msg);
        ui->consoleLinkButton->setText(BUTTON_CONNECT);
        ui->consoleLinkButton->setEnabled(true);
        return;
    }

    qDebug() << "Registered with console and listening for events";

    ui->consoleLinkButton->disconnect();
    connect(ui->consoleLinkButton, SIGNAL(clicked()), this, SLOT(consoleDisconnect()));

    ui->consoleLinkLabel->setText(LABEL_CONSOLE_CONNECTED);
    ui->consoleLinkButton->setText(BUTTON_DISCONNECT);
    ui->consoleLinkButton->setEnabled(true);

    // Load the current ontology
    ui->ontologyTreeTitle->setText(QString("Loading..."));
    consoleObserver->loadCurrentOntology();
}

void AnnotationWidget::consoleDisconnect()
{
    if (consoleObserverService == NULL) return;

    ui->consoleLinkButton->setText(BUTTON_DISCONNECTING);
    ui->consoleLinkButton->setEnabled(false);
    consoleObserverService->stopServer(); // will delete itself later

    qDebug() << "The consoleObserverService is now is defunct. It will free its own memory within the next"<<CONSOLE_OBSERVER_ACCEPT_TIMEOUT<<"seconds.";
    showDisconnected();
}

bool AnnotationWidget::eventFilter(QObject* watched_object, QEvent* event)
{
    bool filtered = false;
    if (event->type() == QEvent::KeyPress)
    {
        QKeyEvent *keyEvent = static_cast<QKeyEvent*>(event);
        const int constKeyInt = keyEvent->key();
        int keyInt = constKeyInt;
        Qt::Key key = static_cast<Qt::Key>(keyInt);

        // Qt doesn't understand this key code
        if (key == Qt::Key_unknown)
        {
            qDebug() << "Unknown key:"<<key;
            return false;
        }

        // Ignore this event if only a modifier was pressed by itself
        if (key == Qt::Key_Control || key == Qt::Key_Shift || key == Qt::Key_Alt || key == Qt::Key_Meta)
        {
            return false;
        }

        // Create key sequence
        Qt::KeyboardModifiers modifiers = keyEvent->modifiers();
        if (modifiers & Qt::ShiftModifier) keyInt += Qt::SHIFT;
        if (modifiers & Qt::ControlModifier) keyInt += Qt::CTRL;
        if (modifiers & Qt::AltModifier) keyInt += Qt::ALT;
        if (modifiers & Qt::MetaModifier) keyInt += Qt::META;
        QKeySequence keySeq(keyInt);
        qDebug() << "Key sequence:"<<keySeq.toString(QKeySequence::NativeText) << "Portable:"<< keySeq.toString(QKeySequence::PortableText);

        if (ontology != NULL) {
            QMap<QKeySequence, qint64>::const_iterator i = ontology->keyBindMap()->constBegin();
            while (i != ontology->keyBindMap()->constEnd())
            {
                QKeySequence keyBind = i.key();
                if (keyBind.matches(keySeq) == QKeySequence::ExactMatch)
                {
                    Entity *termEntity = ontology->getTermById(i.value());
                    qDebug() << "  Annotate with:"<<(termEntity == NULL ? "" : *termEntity->name) << " (id ="<< i.value()<< ")";
                }
                ++i;
            }
        }

        filtered = true;
    }
    return filtered;
}
