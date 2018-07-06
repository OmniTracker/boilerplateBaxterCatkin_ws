/****************************************************************************
** Meta object code from reading C++ file 'einwindow.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.2.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/ein/src/qtgui/einwindow.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'einwindow.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.2.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_EinWindow_t {
    QByteArrayData data[10];
    char stringdata[86];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    offsetof(qt_meta_stringdata_EinWindow_t, stringdata) + ofs \
        - idx * sizeof(QByteArrayData) \
    )
static const qt_meta_stringdata_EinWindow_t qt_meta_stringdata_EinWindow = {
    {
QT_MOC_LITERAL(0, 0, 9),
QT_MOC_LITERAL(1, 10, 14),
QT_MOC_LITERAL(2, 25, 0),
QT_MOC_LITERAL(3, 26, 7),
QT_MOC_LITERAL(4, 34, 13),
QT_MOC_LITERAL(5, 48, 4),
QT_MOC_LITERAL(6, 53, 9),
QT_MOC_LITERAL(7, 63, 11),
QT_MOC_LITERAL(8, 75, 3),
QT_MOC_LITERAL(9, 79, 5)
    },
    "EinWindow\0visibleChanged\0\0visible\0"
    "toggleVisible\0show\0saveImage\0updateImage\0"
    "Mat\0image\0"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_EinWindow[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       4,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,   34,    2, 0x06,

 // slots: name, argc, parameters, tag, flags
       4,    1,   37,    2, 0x0a,
       6,    0,   40,    2, 0x0a,

 // methods: name, argc, parameters, tag, flags
       7,    1,   41,    2, 0x02,

 // signals: parameters
    QMetaType::Void, QMetaType::Bool,    3,

 // slots: parameters
    QMetaType::Void, QMetaType::Bool,    5,
    QMetaType::Void,

 // methods: parameters
    QMetaType::Void, 0x80000000 | 8,    9,

       0        // eod
};

void EinWindow::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        EinWindow *_t = static_cast<EinWindow *>(_o);
        switch (_id) {
        case 0: _t->visibleChanged((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 1: _t->toggleVisible((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 2: _t->saveImage(); break;
        case 3: _t->updateImage((*reinterpret_cast< const Mat(*)>(_a[1]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        void **func = reinterpret_cast<void **>(_a[1]);
        {
            typedef void (EinWindow::*_t)(bool );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&EinWindow::visibleChanged)) {
                *result = 0;
            }
        }
    }
}

const QMetaObject EinWindow::staticMetaObject = {
    { &QMainWindow::staticMetaObject, qt_meta_stringdata_EinWindow.data,
      qt_meta_data_EinWindow,  qt_static_metacall, 0, 0}
};


const QMetaObject *EinWindow::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *EinWindow::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_EinWindow.stringdata))
        return static_cast<void*>(const_cast< EinWindow*>(this));
    return QMainWindow::qt_metacast(_clname);
}

int EinWindow::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QMainWindow::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 4)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 4;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 4)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 4;
    }
    return _id;
}

// SIGNAL 0
void EinWindow::visibleChanged(bool _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}
QT_END_MOC_NAMESPACE
