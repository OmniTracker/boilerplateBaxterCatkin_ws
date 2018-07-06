/********************************************************************************
** Form generated from reading UI file 'armwidget.ui'
**
** Created by: Qt User Interface Compiler version 5.2.1
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_ARMWIDGET_H
#define UI_ARMWIDGET_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QFrame>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QTableView>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_ArmWidget
{
public:
    QGridLayout *gridLayout;
    QTableView *callStackTableView;
    QLabel *label_2;
    QFrame *wristViewFrame;
    QHBoxLayout *horizontalLayout;
    QLabel *label;
    QTableView *dataStackTableView;
    QLabel *stateLabel;
    QLabel *label_5;
    QLabel *label_4;
    QLabel *label_3;
    QLineEdit *replEdit;
    QFrame *captureLineEditFrame;
    QHBoxLayout *horizontalLayout_2;

    void setupUi(QWidget *ArmWidget)
    {
        if (ArmWidget->objectName().isEmpty())
            ArmWidget->setObjectName(QStringLiteral("ArmWidget"));
        ArmWidget->resize(1023, 589);
        gridLayout = new QGridLayout(ArmWidget);
        gridLayout->setSpacing(0);
        gridLayout->setObjectName(QStringLiteral("gridLayout"));
        gridLayout->setContentsMargins(0, 0, 0, 0);
        callStackTableView = new QTableView(ArmWidget);
        callStackTableView->setObjectName(QStringLiteral("callStackTableView"));
        callStackTableView->setMaximumSize(QSize(16777215, 200));

        gridLayout->addWidget(callStackTableView, 5, 0, 1, 3);

        label_2 = new QLabel(ArmWidget);
        label_2->setObjectName(QStringLiteral("label_2"));

        gridLayout->addWidget(label_2, 8, 0, 1, 1);

        wristViewFrame = new QFrame(ArmWidget);
        wristViewFrame->setObjectName(QStringLiteral("wristViewFrame"));
        wristViewFrame->setFrameShape(QFrame::NoFrame);
        wristViewFrame->setFrameShadow(QFrame::Raised);
        horizontalLayout = new QHBoxLayout(wristViewFrame);
        horizontalLayout->setSpacing(0);
        horizontalLayout->setObjectName(QStringLiteral("horizontalLayout"));
        horizontalLayout->setContentsMargins(0, 0, 0, 0);

        gridLayout->addWidget(wristViewFrame, 7, 0, 1, 3);

        label = new QLabel(ArmWidget);
        label->setObjectName(QStringLiteral("label"));
        QSizePolicy sizePolicy(QSizePolicy::Preferred, QSizePolicy::Fixed);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(label->sizePolicy().hasHeightForWidth());
        label->setSizePolicy(sizePolicy);

        gridLayout->addWidget(label, 6, 0, 1, 3);

        dataStackTableView = new QTableView(ArmWidget);
        dataStackTableView->setObjectName(QStringLiteral("dataStackTableView"));
        dataStackTableView->setMaximumSize(QSize(16777215, 200));
        QFont font;
        font.setFamily(QStringLiteral("Liberation Mono"));
        dataStackTableView->setFont(font);
        dataStackTableView->setSelectionMode(QAbstractItemView::NoSelection);
        dataStackTableView->horizontalHeader()->setStretchLastSection(true);

        gridLayout->addWidget(dataStackTableView, 3, 0, 1, 3);

        stateLabel = new QLabel(ArmWidget);
        stateLabel->setObjectName(QStringLiteral("stateLabel"));
        stateLabel->setMinimumSize(QSize(600, 0));
        QFont font1;
        font1.setFamily(QStringLiteral("Liberation Mono"));
        font1.setPointSize(8);
        stateLabel->setFont(font1);
        stateLabel->setTextInteractionFlags(Qt::LinksAccessibleByMouse|Qt::TextSelectableByKeyboard|Qt::TextSelectableByMouse);

        gridLayout->addWidget(stateLabel, 0, 0, 1, 3);

        label_5 = new QLabel(ArmWidget);
        label_5->setObjectName(QStringLiteral("label_5"));

        gridLayout->addWidget(label_5, 9, 0, 1, 1);

        label_4 = new QLabel(ArmWidget);
        label_4->setObjectName(QStringLiteral("label_4"));

        gridLayout->addWidget(label_4, 4, 0, 1, 1);

        label_3 = new QLabel(ArmWidget);
        label_3->setObjectName(QStringLiteral("label_3"));

        gridLayout->addWidget(label_3, 1, 0, 1, 1);

        replEdit = new QLineEdit(ArmWidget);
        replEdit->setObjectName(QStringLiteral("replEdit"));

        gridLayout->addWidget(replEdit, 9, 1, 1, 1);

        captureLineEditFrame = new QFrame(ArmWidget);
        captureLineEditFrame->setObjectName(QStringLiteral("captureLineEditFrame"));
        captureLineEditFrame->setFrameShape(QFrame::NoFrame);
        captureLineEditFrame->setFrameShadow(QFrame::Raised);
        captureLineEditFrame->setLineWidth(0);
        horizontalLayout_2 = new QHBoxLayout(captureLineEditFrame);
        horizontalLayout_2->setSpacing(0);
        horizontalLayout_2->setObjectName(QStringLiteral("horizontalLayout_2"));
        horizontalLayout_2->setContentsMargins(0, 0, 0, 0);

        gridLayout->addWidget(captureLineEditFrame, 8, 1, 1, 1);


        retranslateUi(ArmWidget);

        QMetaObject::connectSlotsByName(ArmWidget);
    } // setupUi

    void retranslateUi(QWidget *ArmWidget)
    {
        ArmWidget->setWindowTitle(QApplication::translate("ArmWidget", "Form", 0));
        label_2->setText(QApplication::translate("ArmWidget", "Commands:", 0));
        label->setText(QApplication::translate("ArmWidget", "Wrist View", 0));
        stateLabel->setText(QApplication::translate("ArmWidget", "No state received.", 0));
        label_5->setText(QApplication::translate("ArmWidget", "Repl:", 0));
        label_4->setText(QApplication::translate("ArmWidget", "Call Stack", 0));
        label_3->setText(QApplication::translate("ArmWidget", "Data Stack", 0));
    } // retranslateUi

};

namespace Ui {
    class ArmWidget: public Ui_ArmWidget {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_ARMWIDGET_H
