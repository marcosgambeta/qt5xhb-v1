/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include <QtCore/QString>
#include <QtCore/QStringList>
#include <QtCore/QObject>
#include <QtCore/QMetaObject>

namespace Qt5xHb
{
  void createReturnClass( void * ptr, const char * classname );
  void createReturnClass( const void * ptr, const char * classname );
  void createReturnClass( void * ptr, const char * classname, bool destroy );
  void createReturnClass( const void * ptr, const char * classname, bool destroy );

  //bool _qt5xhb_checkclsid ( int par, int clsid );
  bool inherits( int par, const char * classname );

  void convert_qlist_int_to_array( const QList<int> list );
  void convert_qlist_qint8_to_array( const QList<qint8> list );
  void convert_qlist_qint16_to_array( const QList<qint16> list );
  void convert_qlist_qint32_to_array( const QList<qint32> list );
  void convert_qlist_qint64_to_array( const QList<qint64> list );

  void convert_qlist_quint8_to_array( const QList<quint8> list );
  void convert_qlist_quint16_to_array( const QList<quint16> list );
  void convert_qlist_quint32_to_array( const QList<quint32> list );
  void convert_qlist_quint64_to_array( const QList<quint64> list );

  void convert_qlist_qreal_to_array( const QList<qreal> list );
  void convert_qlist_double_to_array( const QList<double> list );

  void convert_qstringlist_to_array( const QStringList list );

  void * itemGetPtr( int numpar );
  void * itemGetPtrStackSelfItem();
  void storePointerAndFlag(void * pointer, bool flag);
  void returnNewObject( void * pointer, bool flag );

  void createReturnQObjectClass( QObject * ptr, const char * classname );
  void createReturnQObjectClass( const QObject * ptr, const char * classname );

  void createReturnQWidgetClass( QWidget * ptr, const char * classname );
  void createReturnQWidgetClass( const QWidget * ptr, const char * classname );

  bool isClassDerivedFrom( const char * className1, const char * className2 );
  bool isObjectDerivedFrom( int numpar, const QString className );
  QStringList convert_array_parameter_to_qstringlist( int numpar );
  //QString _qt5xhb_convert_string_parameter_to_qstring ( int numpar );
  QVariantList convert_array_parameter_to_qvariantlist( int numpar );
  void convert_qvariantlist_to_array( const QVariantList list );
  //void _qt5xhb_convert_qlist_qbluetoothuuid_to_array ( const QList<QBluetoothUuid> list );
}
