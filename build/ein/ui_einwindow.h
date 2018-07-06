/********************************************************************************
** Form generated from reading UI file 'einwindow.ui'
**
** Created by: Qt User Interface Compiler version 5.2.1
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_EINWINDOW_H
#define UI_EINWINDOW_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QFrame>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenu>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_EinWindow
{
public:
    QAction *actionSaveImage;
    QWidget *centralwidget;
    QHBoxLayout *horizontalLayout;
    QFrame *imageFrame;
    QHBoxLayout *horizontalLayout_2;
    QMenuBar *menubar;
    QMenu *menuFile;
    QStatusBar *statusbar;

    void setupUi(QMainWindow *EinWindow)
    {
        if (EinWindow->objectName().isEmpty())
            EinWindow->setObjectName(QStringLiteral("EinWindow"));
        EinWindow->resize(800, 600);
        QSizePolicy sizePolicy(QSizePolicy::Minimum, QSizePolicy::Minimum);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(EinWindow->sizePolicy().hasHeightForWidth());
        EinWindow->setSizePolicy(sizePolicy);
        actionSaveImage = new QAction(EinWindow);
        actionSaveImage->setObjectName(QStringLiteral("actionSaveImage"));
        centralwidget = new QWidget(EinWindow);
        centralwidget->setObjectName(QStringLiteral("centralwidget"));
        horizontalLayout = new QHBoxLayout(centralwidget);
        horizontalLayout->setObjectName(QStringLiteral("horizontalLayout"));
        imageFrame = new QFrame(centralwidget);
        imageFrame->setObjectName(QStringLiteral("imageFrame"));
        imageFrame->setFrameShape(QFrame::NoFrame);
        imageFrame->setFrameShadow(QFrame::Raised);
        imageFrame->setLineWidth(0);
        horizontalLayout_2 = new QHBoxLayout(imageFrame);
        horizontalLayout_2->setSpacing(0);
        horizontalLayout_2->setObjectName(QStringLiteral("horizontalLayout_2"));
        horizontalLayout_2->setContentsMargins(-1, 0, 0, 0);

        horizontalLayout->addWidget(imageFrame);

        EinWindow->setCentralWidget(centralwidget);
        menubar = new QMenuBar(EinWindow);
        menubar->setObjectName(QStringLiteral("menubar"));
        menubar->setGeometry(QRect(0, 0, 800, 27));
        menuFile = new QMenu(menubar);
        menuFile->setObjectName(QStringLiteral("menuFile"));
        EinWindow->setMenuBar(menubar);
        statusbar = new QStatusBar(EinWindow);
        statusbar->setObjectName(QStringLiteral("statusbar"));
        EinWindow->setStatusBar(statusbar);

        menubar->addAction(menuFile->menuAction());
        menuFile->addAction(actionSaveImage);

        retranslateUi(EinWindow);

        QMetaObject::connectSlotsByName(EinWindow);
    } // setupUi

    void retranslateUi(QMainWindow *EinWindow)
    {
        EinWindow->setWindowTitle(QApplication::translate("EinWindow", "Ein Window", 0));
        actionSaveImage->setText(QApplication::translate("EinWindow", "Save Image", 0));
        menuFile->setTitle(QApplication::translate("EinWindow", "File", 0));
    } // retranslateUi

};

namespace Ui {
    class EinWindow: public Ui_EinWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_EINWINDOW_H
