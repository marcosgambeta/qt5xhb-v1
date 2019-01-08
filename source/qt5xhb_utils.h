/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include <QString>
#include <QStringList>
#include <QObject>
#include <QMetaObject>

void _qt5xhb_createReturnClass ( void * ptr, const char * classname );
void _qt5xhb_createReturnClass ( const void * ptr, const char * classname );
void _qt5xhb_createReturnClass ( void * ptr, const char * classname, bool destroy );
void _qt5xhb_createReturnClass ( const void * ptr, const char * classname, bool destroy );

//bool _qt5xhb_checkclsid ( int par, int clsid );
bool _qt5xhb_inherits ( int par, const char * classname );

void _qt5xhb_convert_qlist_int_to_array ( const QList<int> list );
void _qt5xhb_convert_qlist_qint8_to_array ( const QList<qint8> list );
void _qt5xhb_convert_qlist_qint16_to_array ( const QList<qint16> list );
void _qt5xhb_convert_qlist_qint32_to_array ( const QList<qint32> list );
void _qt5xhb_convert_qlist_qint64_to_array ( const QList<qint64> list );

void _qt5xhb_convert_qlist_quint8_to_array ( const QList<quint8> list );
void _qt5xhb_convert_qlist_quint16_to_array ( const QList<quint16> list );
void _qt5xhb_convert_qlist_quint32_to_array ( const QList<quint32> list );
void _qt5xhb_convert_qlist_quint64_to_array ( const QList<quint64> list );

void _qt5xhb_convert_qlist_qreal_to_array ( const QList<qreal> list );
void _qt5xhb_convert_qlist_double_to_array ( const QList<double> list );

void _qt5xhb_convert_qstringlist_to_array ( const QStringList list );

void * _qt5xhb_itemGetPtr ( int numpar );
void * _qt5xhb_itemGetPtrStackSelfItem ();
void _qt5xhb_storePointerAndFlag (void * pointer, bool flag);
void _qt5xhb_returnNewObject (void * pointer, bool flag);

void _qt5xhb_createReturnQObjectClass ( QObject * ptr, const char * classname );
void _qt5xhb_createReturnQObjectClass ( const QObject * ptr, const char * classname );

void _qt5xhb_createReturnQWidgetClass ( QWidget * ptr, const char * classname );
void _qt5xhb_createReturnQWidgetClass ( const QWidget * ptr, const char * classname );

bool _qt5xhb_isClassDerivedFrom ( const char * className1, const char * className2 );
bool _qt5xhb_isObjectDerivedFrom ( int numpar, const QString className );
QStringList _qt5xhb_convert_array_parameter_to_qstringlist ( int numpar );
//QString _qt5xhb_convert_string_parameter_to_qstring ( int numpar );
QVariantList _qt5xhb_convert_array_parameter_to_qvariantlist ( int numpar );
void _qt5xhb_convert_qvariantlist_to_array ( const QVariantList list );
//void _qt5xhb_convert_qlist_qbluetoothuuid_to_array ( const QList<QBluetoothUuid> list );
