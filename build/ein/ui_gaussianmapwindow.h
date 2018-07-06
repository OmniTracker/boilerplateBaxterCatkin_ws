/********************************************************************************
** Form generated from reading UI file 'gaussianmapwindow.ui'
**
** Created by: Qt User Interface Compiler version 5.2.1
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_GAUSSIANMAPWINDOW_H
#define UI_GAUSSIANMAPWINDOW_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QFrame>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenu>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_GaussianMapWindow
{
public:
    QAction *actionSave_mean_image;
    QAction *actionSave_std_dev_image;
    QAction *actionSave_height_image;
    QAction *actionSaveImage;
    QWidget *centralwidget;
    QGridLayout *gridLayout;
    QFrame *frame;
    QGridLayout *gridLayout_2;
    QMenuBar *menubar;
    QMenu *menuFile;
    QStatusBar *statusbar;

    void setupUi(QMainWindow *GaussianMapWindow)
    {
        if (GaussianMapWindow->objectName().isEmpty())
            GaussianMapWindow->setObjectName(QStringLiteral("GaussianMapWindow"));
        GaussianMapWindow->resize(800, 600);
        actionSave_mean_image = new QAction(GaussianMapWindow);
        actionSave_mean_image->setObjectName(QStringLiteral("actionSave_mean_image"));
        actionSave_std_dev_image = new QAction(GaussianMapWindow);
        actionSave_std_dev_image->setObjectName(QStringLiteral("actionSave_std_dev_image"));
        actionSave_height_image = new QAction(GaussianMapWindow);
        actionSave_height_image->setObjectName(QStringLiteral("actionSave_height_image"));
        actionSaveImage = new QAction(GaussianMapWindow);
        actionSaveImage->setObjectName(QStringLiteral("actionSaveImage"));
        centralwidget = new QWidget(GaussianMapWindow);
        centralwidget->setObjectName(QStringLiteral("centralwidget"));
        gridLayout = new QGridLayout(centralwidget);
        gridLayout->setObjectName(QStringLiteral("gridLayout"));
        frame = new QFrame(centralwidget);
        frame->setObjectName(QStringLiteral("frame"));
        frame->setFrameShape(QFrame::NoFrame);
        frame->setFrameShadow(QFrame::Raised);
        gridLayout_2 = new QGridLayout(frame);
        gridLayout_2->setObjectName(QStringLiteral("gridLayout_2"));
        gridLayout_2->setContentsMargins(0, 0, 0, 0);

        gridLayout->addWidget(frame, 0, 0, 1, 1);

        GaussianMapWindow->setCentralWidget(centralwidget);
        menubar = new QMenuBar(GaussianMapWindow);
        menubar->setObjectName(QStringLiteral("menubar"));
        menubar->setGeometry(QRect(0, 0, 800, 27));
        menuFile = new QMenu(menubar);
        menuFile->setObjectName(QStringLiteral("menuFile"));
        GaussianMapWindow->setMenuBar(menubar);
        statusbar = new QStatusBar(GaussianMapWindow);
        statusbar->setObjectName(QStringLiteral("statusbar"));
        GaussianMapWindow->setStatusBar(statusbar);

        menubar->addAction(menuFile->menuAction());
        menuFile->addAction(actionSaveImage);

        retranslateUi(GaussianMapWindow);

        QMetaObject::connectSlotsByName(GaussianMapWindow);
    } // setupUi

    void retranslateUi(QMainWindow *GaussianMapWindow)
    {
        GaussianMapWindow->setWindowTitle(QApplication::translate("GaussianMapWindow", "MainWindow", 0));
        actionSave_mean_image->setText(QApplication::translate("GaussianMapWindow", "Save mean image", 0));
        actionSave_std_dev_image->setText(QApplication::translate("GaussianMapWindow", "Save std dev image", 0));
        actionSave_height_image->setText(QApplication::translate("GaussianMapWindow", "Save height image", 0));
        actionSaveImage->setText(QApplication::translate("GaussianMapWindow", "Save Image", 0));
        menuFile->setTitle(QApplication::translate("GaussianMapWindow", "File", 0));
    } // retranslateUi

};

namespace Ui {
    class GaussianMapWindow: public Ui_GaussianMapWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_GAUSSIANMAPWINDOW_H
