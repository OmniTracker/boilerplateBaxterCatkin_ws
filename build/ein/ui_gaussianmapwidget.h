/********************************************************************************
** Form generated from reading UI file 'gaussianmapwidget.ui'
**
** Created by: Qt User Interface Compiler version 5.2.1
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_GAUSSIANMAPWIDGET_H
#define UI_GAUSSIANMAPWIDGET_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QTabWidget>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_GaussianMapWidget
{
public:
    QHBoxLayout *horizontalLayout;
    QTabWidget *tabs;
    QWidget *meanImage;
    QHBoxLayout *horizontalLayout_2;
    QWidget *stdDevImage;
    QHBoxLayout *horizontalLayout_4;
    QWidget *heightImage;
    QHBoxLayout *horizontalLayout_6;

    void setupUi(QWidget *GaussianMapWidget)
    {
        if (GaussianMapWidget->objectName().isEmpty())
            GaussianMapWidget->setObjectName(QStringLiteral("GaussianMapWidget"));
        GaussianMapWidget->resize(749, 617);
        horizontalLayout = new QHBoxLayout(GaussianMapWidget);
        horizontalLayout->setObjectName(QStringLiteral("horizontalLayout"));
        horizontalLayout->setContentsMargins(0, 0, 0, 0);
        tabs = new QTabWidget(GaussianMapWidget);
        tabs->setObjectName(QStringLiteral("tabs"));
        meanImage = new QWidget();
        meanImage->setObjectName(QStringLiteral("meanImage"));
        horizontalLayout_2 = new QHBoxLayout(meanImage);
        horizontalLayout_2->setObjectName(QStringLiteral("horizontalLayout_2"));
        tabs->addTab(meanImage, QString());
        stdDevImage = new QWidget();
        stdDevImage->setObjectName(QStringLiteral("stdDevImage"));
        horizontalLayout_4 = new QHBoxLayout(stdDevImage);
        horizontalLayout_4->setObjectName(QStringLiteral("horizontalLayout_4"));
        tabs->addTab(stdDevImage, QString());
        heightImage = new QWidget();
        heightImage->setObjectName(QStringLiteral("heightImage"));
        horizontalLayout_6 = new QHBoxLayout(heightImage);
        horizontalLayout_6->setObjectName(QStringLiteral("horizontalLayout_6"));
        tabs->addTab(heightImage, QString());

        horizontalLayout->addWidget(tabs);


        retranslateUi(GaussianMapWidget);

        tabs->setCurrentIndex(0);


        QMetaObject::connectSlotsByName(GaussianMapWidget);
    } // setupUi

    void retranslateUi(QWidget *GaussianMapWidget)
    {
        GaussianMapWidget->setWindowTitle(QApplication::translate("GaussianMapWidget", "Form", 0));
        tabs->setTabText(tabs->indexOf(meanImage), QApplication::translate("GaussianMapWidget", "mean", 0));
        tabs->setTabText(tabs->indexOf(stdDevImage), QApplication::translate("GaussianMapWidget", "stdDev", 0));
        tabs->setTabText(tabs->indexOf(heightImage), QApplication::translate("GaussianMapWidget", "height", 0));
    } // retranslateUi

};

namespace Ui {
    class GaussianMapWidget: public Ui_GaussianMapWidget {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_GAUSSIANMAPWIDGET_H
