/********************************************************************************
** Form generated from reading UI file 'streamviewerwindow.ui'
**
** Created by: Qt User Interface Compiler version 5.2.1
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_STREAMVIEWERWINDOW_H
#define UI_STREAMVIEWERWINDOW_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QFrame>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenu>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QSlider>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_StreamViewerWindow
{
public:
    QAction *actionSaveImage;
    QWidget *centralwidget;
    QGridLayout *gridLayout;
    QSlider *timeSlider;
    QFrame *streamFrame;
    QVBoxLayout *verticalLayout;
    QLabel *imageLabel;
    QMenuBar *menubar;
    QMenu *menuFile;
    QStatusBar *statusbar;

    void setupUi(QMainWindow *StreamViewerWindow)
    {
        if (StreamViewerWindow->objectName().isEmpty())
            StreamViewerWindow->setObjectName(QStringLiteral("StreamViewerWindow"));
        StreamViewerWindow->resize(800, 600);
        actionSaveImage = new QAction(StreamViewerWindow);
        actionSaveImage->setObjectName(QStringLiteral("actionSaveImage"));
        centralwidget = new QWidget(StreamViewerWindow);
        centralwidget->setObjectName(QStringLiteral("centralwidget"));
        gridLayout = new QGridLayout(centralwidget);
        gridLayout->setObjectName(QStringLiteral("gridLayout"));
        timeSlider = new QSlider(centralwidget);
        timeSlider->setObjectName(QStringLiteral("timeSlider"));
        timeSlider->setMaximum(100);
        timeSlider->setOrientation(Qt::Horizontal);

        gridLayout->addWidget(timeSlider, 1, 0, 1, 1);

        streamFrame = new QFrame(centralwidget);
        streamFrame->setObjectName(QStringLiteral("streamFrame"));
        streamFrame->setFrameShape(QFrame::NoFrame);
        streamFrame->setFrameShadow(QFrame::Plain);
        verticalLayout = new QVBoxLayout(streamFrame);
        verticalLayout->setSpacing(0);
        verticalLayout->setObjectName(QStringLiteral("verticalLayout"));
        verticalLayout->setContentsMargins(0, 0, 0, 0);
        imageLabel = new QLabel(streamFrame);
        imageLabel->setObjectName(QStringLiteral("imageLabel"));
        imageLabel->setTextInteractionFlags(Qt::LinksAccessibleByMouse|Qt::TextSelectableByKeyboard|Qt::TextSelectableByMouse);

        verticalLayout->addWidget(imageLabel);


        gridLayout->addWidget(streamFrame, 0, 0, 1, 1);

        StreamViewerWindow->setCentralWidget(centralwidget);
        menubar = new QMenuBar(StreamViewerWindow);
        menubar->setObjectName(QStringLiteral("menubar"));
        menubar->setGeometry(QRect(0, 0, 800, 27));
        menuFile = new QMenu(menubar);
        menuFile->setObjectName(QStringLiteral("menuFile"));
        StreamViewerWindow->setMenuBar(menubar);
        statusbar = new QStatusBar(StreamViewerWindow);
        statusbar->setObjectName(QStringLiteral("statusbar"));
        StreamViewerWindow->setStatusBar(statusbar);

        menubar->addAction(menuFile->menuAction());
        menuFile->addAction(actionSaveImage);

        retranslateUi(StreamViewerWindow);

        QMetaObject::connectSlotsByName(StreamViewerWindow);
    } // setupUi

    void retranslateUi(QMainWindow *StreamViewerWindow)
    {
        StreamViewerWindow->setWindowTitle(QApplication::translate("StreamViewerWindow", "Stream Viewer", 0));
        actionSaveImage->setText(QApplication::translate("StreamViewerWindow", "Save Image", 0));
        imageLabel->setText(QApplication::translate("StreamViewerWindow", "Current Stream Image:", 0));
        menuFile->setTitle(QApplication::translate("StreamViewerWindow", "File", 0));
    } // retranslateUi

};

namespace Ui {
    class StreamViewerWindow: public Ui_StreamViewerWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_STREAMVIEWERWINDOW_H
