/*

  Qt5xHb - biblioteca de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QStringList>

void _qt5xhb_createReturnClass ( void * ptr, const char * classname );
void _qt5xhb_createReturnClass ( const void * ptr, const char * classname );
void _qt5xhb_createReturnClass ( void * ptr, const char * classname, bool destroy );
void _qt5xhb_createReturnClass ( const void * ptr, const char * classname, bool destroy );

bool _qt5xhb_checkclsid ( int par, int clsid );
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
