/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBLUETOOTHSERVICEINFO
REQUEST QBLUETOOTHSOCKET
REQUEST QBLUETOOTHADDRESS
#endif

CLASS QBluetoothServer INHERIT QObject

   DATA class_id INIT Class_Id_QBluetoothServer
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD close
   METHOD listen
   METHOD isListening
   METHOD setMaxPendingConnections
   METHOD maxPendingConnections
   METHOD hasPendingConnections
   METHOD nextPendingConnection
   METHOD serverAddress
   METHOD serverPort
   METHOD setSecurityFlags
   METHOD securityFlags
   METHOD serverType
   METHOD error

   METHOD onNewConnection
   METHOD onError

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QBluetoothServer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QBluetoothServer>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QBluetoothServer>
#endif
#endif

/*
QBluetoothServer(QBluetoothServiceInfo::Protocol serverType, QObject *parent = 0)
*/
HB_FUNC_STATIC( QBLUETOOTHSERVER_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( ISBETWEEN(1,2) && ISNUM(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    int par1 = hb_parni(1);
    QObject * par2 = ISNIL(2)? 0 : (QObject *) _qt5xhb_itemGetPtr(2);
    QBluetoothServer * o = new QBluetoothServer (  (QBluetoothServiceInfo::Protocol) par1, par2 );
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL,(QBluetoothServer *) o );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    hb_itemReturn( self );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

HB_FUNC_STATIC( QBLUETOOTHSERVER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServer * obj = (QBluetoothServer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
#endif
}

/*
void close()
*/
HB_FUNC_STATIC( QBLUETOOTHSERVER_CLOSE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServer * obj = (QBluetoothServer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->close (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool listen(const QBluetoothAddress &address = QBluetoothAddress(), quint16 port = 0)
*/
void QBluetoothServer_listen1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServer * obj = (QBluetoothServer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QBluetoothAddress par1 = ISNIL(1)? QBluetoothAddress() : *(QBluetoothAddress *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->listen ( par1, (quint16) ISNIL(2)? 0 : hb_parni(2) ) );
  }
#endif
}

/*
QBluetoothServiceInfo listen(const QBluetoothUuid &uuid, const QString &serviceName = QString())
*/
void QBluetoothServer_listen2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServer * obj = (QBluetoothServer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QBluetoothUuid * par1 = (QBluetoothUuid *) _qt5xhb_itemGetPtr(1);
    QString par2 = ISNIL(2)? QString() : QLatin1String( hb_parc(2) );
    QBluetoothServiceInfo * ptr = new QBluetoothServiceInfo( obj->listen ( *par1, par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QBLUETOOTHSERVICEINFO" );
  }
#endif
}

//[1]bool listen(const QBluetoothAddress &address = QBluetoothAddress(), quint16 port = 0)
//[2]QBluetoothServiceInfo listen(const QBluetoothUuid &uuid, const QString &serviceName = QString())

HB_FUNC_STATIC( QBLUETOOTHSERVER_LISTEN )
{
  if( ISBETWEEN(0,2) && (ISQBLUETOOTHADDRESS(1)||ISNIL(1)) && (ISNUM(2)||ISNIL(2)) )
  {
    QBluetoothServer_listen1();
  }
  else if( ISBETWEEN(1,2) && ISQBLUETOOTHUUID(1) && (ISCHAR(2)||ISNIL(2)) )
  {
    QBluetoothServer_listen2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool isListening() const
*/
HB_FUNC_STATIC( QBLUETOOTHSERVER_ISLISTENING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServer * obj = (QBluetoothServer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isListening (  ) );
  }
#endif
}

/*
void setMaxPendingConnections(int numConnections)
*/
HB_FUNC_STATIC( QBLUETOOTHSERVER_SETMAXPENDINGCONNECTIONS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServer * obj = (QBluetoothServer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setMaxPendingConnections ( (int) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
int maxPendingConnections() const
*/
HB_FUNC_STATIC( QBLUETOOTHSERVER_MAXPENDINGCONNECTIONS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServer * obj = (QBluetoothServer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->maxPendingConnections (  ) );
  }
#endif
}

/*
bool hasPendingConnections() const
*/
HB_FUNC_STATIC( QBLUETOOTHSERVER_HASPENDINGCONNECTIONS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServer * obj = (QBluetoothServer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->hasPendingConnections (  ) );
  }
#endif
}

/*
QBluetoothSocket *nextPendingConnection()
*/
HB_FUNC_STATIC( QBLUETOOTHSERVER_NEXTPENDINGCONNECTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServer * obj = (QBluetoothServer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QBluetoothSocket * ptr = obj->nextPendingConnection (  );
    _qt5xhb_createReturnClass ( ptr, "QBLUETOOTHSOCKET" );
  }
#endif
}

/*
QBluetoothAddress serverAddress() const
*/
HB_FUNC_STATIC( QBLUETOOTHSERVER_SERVERADDRESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServer * obj = (QBluetoothServer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QBluetoothAddress * ptr = new QBluetoothAddress( obj->serverAddress (  ) );
    _qt5xhb_createReturnClass ( ptr, "QBLUETOOTHADDRESS" );
  }
#endif
}

/*
quint16 serverPort() const
*/
HB_FUNC_STATIC( QBLUETOOTHSERVER_SERVERPORT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServer * obj = (QBluetoothServer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->serverPort (  ) );
  }
#endif
}

/*
void setSecurityFlags(QBluetooth::SecurityFlags security)
*/
HB_FUNC_STATIC( QBLUETOOTHSERVER_SETSECURITYFLAGS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServer * obj = (QBluetoothServer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setSecurityFlags (  (QBluetooth::SecurityFlags) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QBluetooth::SecurityFlags securityFlags() const
*/
HB_FUNC_STATIC( QBLUETOOTHSERVER_SECURITYFLAGS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServer * obj = (QBluetoothServer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->securityFlags (  ) );
  }
#endif
}

/*
QBluetoothServiceInfo::Protocol serverType() const
*/
HB_FUNC_STATIC( QBLUETOOTHSERVER_SERVERTYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServer * obj = (QBluetoothServer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->serverType (  ) );
  }
#endif
}

/*
Error error() const
*/
HB_FUNC_STATIC( QBLUETOOTHSERVER_ERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServer * obj = (QBluetoothServer *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->error (  ) );
  }
#endif
}

#pragma ENDDUMP
