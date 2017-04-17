/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDBUSERROR
#endif

CLASS QDBusServer INHERIT QObject

   DATA class_id INIT Class_Id_QDBusServer
   DATA class_flags INIT 0
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

PROCEDURE destroyObject () CLASS QDBusServer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDBusServer>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDBusServer>
#endif

/*
QDBusServer(const QString &address, QObject *parent = 0)
*/
HB_FUNC_STATIC( QDBUSSERVER_NEW1 )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QObject * par2 = ISNIL(2)? 0 : (QObject *) _qt5xhb_itemGetPtr(2);
  QDBusServer * o = new QDBusServer ( par1, par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QDBusServer(QObject *parent = 0)
*/
HB_FUNC_STATIC( QDBUSSERVER_NEW2 )
{
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QDBusServer * o = new QDBusServer ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QDBusServer(const QString &address, QObject *parent = 0)
//[2]QDBusServer(QObject *parent = 0)

HB_FUNC_STATIC( QDBUSSERVER_NEW )
{
  // TODO: implementar
}

HB_FUNC_STATIC( QDBUSSERVER_DELETE )
{
  QDBusServer * obj = (QDBusServer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isConnected() const
*/
HB_FUNC_STATIC( QDBUSSERVER_ISCONNECTED )
{
  QDBusServer * obj = (QDBusServer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isConnected (  ) );
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
    QDBusError * ptr = new QDBusError( obj->lastError (  ) );
    _qt5xhb_createReturnClass ( ptr, "QDBUSERROR" );
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
    hb_retc( (const char *) obj->address (  ).toLatin1().data() );
  }
}




#pragma ENDDUMP
