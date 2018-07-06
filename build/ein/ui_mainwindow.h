/********************************************************************************
** Form generated from reading UI file 'mainwindow.ui'
**
** Created by: Qt User Interface Compiler version 5.2.1
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAINWINDOW_H
#define UI_MAINWINDOW_H

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
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QAction *actionTest;
    QAction *actionRight_Words;
    QWidget *centralWidget;
    QGridLayout *gridLayout;
    QFrame *rightArmFrame;
    QVBoxLayout *verticalLayout;
    QFrame *leftArmFrame;
    QVBoxLayout *verticalLayout_2;
    QFrame *objectMapViewFrame;
    QGridLayout *gridLayout_2;
    QLabel *label_3;
    QMenuBar *menuBar;
    QMenu *menuWindows;
    QMenu *menuRightWords;
    QMenu *menuLeftWords;

    void setupUi(QMainWindow *MainWindow)
    {
        if (MainWindow->objectName().isEmpty())
            MainWindow->setObjectName(QStringLiteral("MainWindow"));
        MainWindow->resize(1514, 797);
        actionTest = new QAction(MainWindow);
        actionTest->setObjectName(QStringLiteral("actionTest"));
        actionRight_Words = new QAction(MainWindow);
        actionRight_Words->setObjectName(QStringLiteral("actionRight_Words"));
        centralWidget = new QWidget(MainWindow);
        centralWidget->setObjectName(QStringLiteral("centralWidget"));
        gridLayout = new QGridLayout(centralWidget);
        gridLayout->setSpacing(6);
        gridLayout->setContentsMargins(11, 11, 11, 11);
        gridLayout->setObjectName(QStringLiteral("gridLayout"));
        gridLayout->setContentsMargins(0, 0, 0, 0);
        rightArmFrame = new QFrame(centralWidget);
        rightArmFrame->setObjectName(QStringLiteral("rightArmFrame"));
        rightArmFrame->setFrameShape(QFrame::StyledPanel);
        rightArmFrame->setFrameShadow(QFrame::Raised);
        verticalLayout = new QVBoxLayout(rightArmFrame);
        verticalLayout->setSpacing(6);
        verticalLayout->setContentsMargins(11, 11, 11, 11);
        verticalLayout->setObjectName(QStringLiteral("verticalLayout"));

        gridLayout->addWidget(rightArmFrame, 1, 0, 3, 1);

        leftArmFrame = new QFrame(centralWidget);
        leftArmFrame->setObjectName(QStringLiteral("leftArmFrame"));
        leftArmFrame->setFrameShape(QFrame::StyledPanel);
        leftArmFrame->setFrameShadow(QFrame::Raised);
        verticalLayout_2 = new QVBoxLayout(leftArmFrame);
        verticalLayout_2->setSpacing(6);
        verticalLayout_2->setContentsMargins(11, 11, 11, 11);
        verticalLayout_2->setObjectName(QStringLiteral("verticalLayout_2"));

        gridLayout->addWidget(leftArmFrame, 1, 2, 3, 1);

        objectMapViewFrame = new QFrame(centralWidget);
        objectMapViewFrame->setObjectName(QStringLiteral("objectMapViewFrame"));
        objectMapViewFrame->setFrameShape(QFrame::StyledPanel);
        objectMapViewFrame->setFrameShadow(QFrame::Raised);
        gridLayout_2 = new QGridLayout(objectMapViewFrame);
        gridLayout_2->setSpacing(6);
        gridLayout_2->setContentsMargins(11, 11, 11, 11);
        gridLayout_2->setObjectName(QStringLiteral("gridLayout_2"));
        label_3 = new QLabel(objectMapViewFrame);
        label_3->setObjectName(QStringLiteral("label_3"));
        QSizePolicy sizePolicy(QSizePolicy::Preferred, QSizePolicy::Fixed);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(label_3->sizePolicy().hasHeightForWidth());
        label_3->setSizePolicy(sizePolicy);

        gridLayout_2->addWidget(label_3, 0, 0, 1, 1);


        gridLayout->addWidget(objectMapViewFrame, 1, 1, 3, 1);

        MainWindow->setCentralWidget(centralWidget);
        menuBar = new QMenuBar(MainWindow);
        menuBar->setObjectName(QStringLiteral("menuBar"));
        menuBar->setGeometry(QRect(0, 0, 1514, 27));
        menuBar->setDefaultUp(true);
        menuBar->setNativeMenuBar(false);
        menuWindows = new QMenu(menuBar);
        menuWindows->setObjectName(QStringLiteral("menuWindows"));
        menuRightWords = new QMenu(menuBar);
        menuRightWords->setObjectName(QStringLiteral("menuRightWords"));
        menuLeftWords = new QMenu(menuBar);
        menuLeftWords->setObjectName(QStringLiteral("menuLeftWords"));
        MainWindow->setMenuBar(menuBar);

        menuBar->addAction(menuWindows->menuAction());
        menuBar->addAction(menuRightWords->menuAction());
        menuBar->addAction(menuLeftWords->menuAction());

        retranslateUi(MainWindow);

        QMetaObject::connectSlotsByName(MainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindow)
    {
        MainWindow->setWindowTitle(QApplication::translate("MainWindow", "MainWindow", 0));
        actionTest->setText(QApplication::translate("MainWindow", "Testtest", 0));
        actionRight_Words->setText(QApplication::translate("MainWindow", "Right Words", 0));
        label_3->setText(QApplication::translate("MainWindow", "Object Map View", 0));
        menuWindows->setTitle(QApplication::translate("MainWindow", "Windows", 0));
        menuRightWords->setTitle(QApplication::translate("MainWindow", "Right Words", 0));
        menuLeftWords->setTitle(QApplication::translate("MainWindow", "Left Words", 0));
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
