$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDBUSERROR
#endif

CLASS QDBusServer INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD isConnected
   METHOD lastError
   METHOD address

   METHOD onNewConnection

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QDBusServer(const QString &address, QObject *parent = 0)
*/
HB_FUNC_STATIC( QDBUSSERVER_NEW1 )
{
  QDBusServer * o = new QDBusServer ( PQSTRING(1), OPQOBJECT(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QDBusServer(QObject *parent = 0)
*/
HB_FUNC_STATIC( QDBUSSERVER_NEW2 )
{
  QDBusServer * o = new QDBusServer ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QDBusServer(const QString &address, QObject *parent = 0)
//[2]QDBusServer(QObject *parent = 0)

HB_FUNC_STATIC( QDBUSSERVER_NEW )
{
  // TODO: implementar
}

$deleteMethod

/*
bool isConnected() const
*/
HB_FUNC_STATIC( QDBUSSERVER_ISCONNECTED )
{
  QDBusServer * obj = (QDBusServer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isConnected () );
  }
}


/*
QDBusError lastError() const
*/
HB_FUNC_STATIC( QDBUSSERVER_LASTERROR )
{
  QDBusServer * obj = (QDBusServer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDBusError * ptr = new QDBusError( obj->lastError () );
    _qt5xhb_createReturnClass ( ptr, "QDBUSERROR", true );
  }
}


/*
QString address() const
*/
HB_FUNC_STATIC( QDBUSSERVER_ADDRESS )
{
  QDBusServer * obj = (QDBusServer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->address () );
  }
}




#pragma ENDDUMP
