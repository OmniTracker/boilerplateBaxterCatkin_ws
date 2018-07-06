/********************************************************************************
** Form generated from reading UI file 'discrepancywindow.ui'
**
** Created by: Qt User Interface Compiler version 5.2.1
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_DISCREPANCYWINDOW_H
#define UI_DISCREPANCYWINDOW_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenu>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QTabWidget>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_DiscrepancyWindow
{
public:
    QAction *actionSaveImage;
    QWidget *centralwidget;
    QGridLayout *gridLayout;
    QTabWidget *tabs;
    QWidget *discrepancyDensity;
    QHBoxLayout *horizontalLayout_2;
    QWidget *discrepancyRgb;
    QGridLayout *gridLayout_2;
    QMenuBar *menubar;
    QMenu *menuFile;
    QStatusBar *statusbar;

    void setupUi(QMainWindow *DiscrepancyWindow)
    {
        if (DiscrepancyWindow->objectName().isEmpty())
            DiscrepancyWindow->setObjectName(QStringLiteral("DiscrepancyWindow"));
        DiscrepancyWindow->resize(800, 600);
        actionSaveImage = new QAction(DiscrepancyWindow);
        actionSaveImage->setObjectName(QStringLiteral("actionSaveImage"));
        centralwidget = new QWidget(DiscrepancyWindow);
        centralwidget->setObjectName(QStringLiteral("centralwidget"));
        gridLayout = new QGridLayout(centralwidget);
        gridLayout->setObjectName(QStringLiteral("gridLayout"));
        tabs = new QTabWidget(centralwidget);
        tabs->setObjectName(QStringLiteral("tabs"));
        discrepancyDensity = new QWidget();
        discrepancyDensity->setObjectName(QStringLiteral("discrepancyDensity"));
        horizontalLayout_2 = new QHBoxLayout(discrepancyDensity);
        horizontalLayout_2->setObjectName(QStringLiteral("horizontalLayout_2"));
        tabs->addTab(discrepancyDensity, QString());
        discrepancyRgb = new QWidget();
        discrepancyRgb->setObjectName(QStringLiteral("discrepancyRgb"));
        gridLayout_2 = new QGridLayout(discrepancyRgb);
        gridLayout_2->setObjectName(QStringLiteral("gridLayout_2"));
        tabs->addTab(discrepancyRgb, QString());

        gridLayout->addWidget(tabs, 0, 0, 1, 1);

        DiscrepancyWindow->setCentralWidget(centralwidget);
        menubar = new QMenuBar(DiscrepancyWindow);
        menubar->setObjectName(QStringLiteral("menubar"));
        menubar->setGeometry(QRect(0, 0, 800, 25));
        menuFile = new QMenu(menubar);
        menuFile->setObjectName(QStringLiteral("menuFile"));
        DiscrepancyWindow->setMenuBar(menubar);
        statusbar = new QStatusBar(DiscrepancyWindow);
        statusbar->setObjectName(QStringLiteral("statusbar"));
        DiscrepancyWindow->setStatusBar(statusbar);

        menubar->addAction(menuFile->menuAction());
        menuFile->addAction(actionSaveImage);

        retranslateUi(DiscrepancyWindow);

        tabs->setCurrentIndex(0);


        QMetaObject::connectSlotsByName(DiscrepancyWindow);
    } // setupUi

    void retranslateUi(QMainWindow *DiscrepancyWindow)
    {
        DiscrepancyWindow->setWindowTitle(QApplication::translate("DiscrepancyWindow", "Discrepancy Viewer", 0));
        actionSaveImage->setText(QApplication::translate("DiscrepancyWindow", "Save Image", 0));
        tabs->setTabText(tabs->indexOf(discrepancyDensity), QApplication::translate("DiscrepancyWindow", "Discrepancy RGB", 0));
        tabs->setTabText(tabs->indexOf(discrepancyRgb), QApplication::translate("DiscrepancyWindow", "Discrepancy Density", 0));
        menuFile->setTitle(QApplication::translate("DiscrepancyWindow", "File", 0));
    } // retranslateUi

};

namespace Ui {
    class DiscrepancyWindow: public Ui_DiscrepancyWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_DISCREPANCYWINDOW_H
