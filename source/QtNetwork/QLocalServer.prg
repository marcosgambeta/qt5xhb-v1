/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QLOCALSOCKET
#endif

CLASS QLocalServer INHERIT QObject

   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD close
   METHOD errorString
   METHOD fullServerName
   METHOD hasPendingConnections
   METHOD isListening
   METHOD listen
   METHOD maxPendingConnections
   METHOD nextPendingConnection
   METHOD serverError
   METHOD serverName
   METHOD setMaxPendingConnections
   METHOD waitForNewConnection
   METHOD removeServer

   METHOD onNewConnection

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QLocalServer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QLocalServer>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QLocalServer>
#endif

/*
QLocalServer ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QLOCALSERVER_NEW )
{
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QLocalServer * o = new QLocalServer ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QLOCALSERVER_DELETE )
{
  QLocalServer * obj = (QLocalServer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void close ()
*/
HB_FUNC_STATIC( QLOCALSERVER_CLOSE )
{
  QLocalServer * obj = (QLocalServer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->close (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString errorString () const
*/
HB_FUNC_STATIC( QLOCALSERVER_ERRORSTRING )
{
  QLocalServer * obj = (QLocalServer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->errorString (  ).toLatin1().data() );
  }
}


/*
QString fullServerName () const
*/
HB_FUNC_STATIC( QLOCALSERVER_FULLSERVERNAME )
{
  QLocalServer * obj = (QLocalServer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->fullServerName (  ).toLatin1().data() );
  }
}


/*
virtual bool hasPendingConnections () const
*/
HB_FUNC_STATIC( QLOCALSERVER_HASPENDINGCONNECTIONS )
{
  QLocalServer * obj = (QLocalServer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->hasPendingConnections (  ) );
  }
}


/*
bool isListening () const
*/
HB_FUNC_STATIC( QLOCALSERVER_ISLISTENING )
{
  QLocalServer * obj = (QLocalServer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isListening (  ) );
  }
}


/*
bool listen ( const QString & name )
*/
HB_FUNC_STATIC( QLOCALSERVER_LISTEN )
{
  QLocalServer * obj = (QLocalServer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->listen ( PQSTRING(1) ) );
  }
}


/*
int maxPendingConnections () const
*/
HB_FUNC_STATIC( QLOCALSERVER_MAXPENDINGCONNECTIONS )
{
  QLocalServer * obj = (QLocalServer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->maxPendingConnections (  ) );
  }
}


/*
virtual QLocalSocket * nextPendingConnection ()
*/
HB_FUNC_STATIC( QLOCALSERVER_NEXTPENDINGCONNECTION )
{
  QLocalServer * obj = (QLocalServer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QLocalSocket * ptr = obj->nextPendingConnection (  );
    _qt5xhb_createReturnClass ( ptr, "QLOCALSOCKET" );
  }
}


/*
QAbstractSocket::SocketError serverError () const
*/
HB_FUNC_STATIC( QLOCALSERVER_SERVERERROR )
{
  QLocalServer * obj = (QLocalServer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->serverError (  ) );
  }
}


/*
QString serverName () const
*/
HB_FUNC_STATIC( QLOCALSERVER_SERVERNAME )
{
  QLocalServer * obj = (QLocalServer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->serverName (  ).toLatin1().data() );
  }
}


/*
void setMaxPendingConnections ( int numConnections )
*/
HB_FUNC_STATIC( QLOCALSERVER_SETMAXPENDINGCONNECTIONS )
{
  QLocalServer * obj = (QLocalServer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMaxPendingConnections ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool waitForNewConnection ( int msec = 0, bool * timedOut = 0 )
*/
HB_FUNC_STATIC( QLOCALSERVER_WAITFORNEWCONNECTION )
{
  QLocalServer * obj = (QLocalServer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    bool par2;
    hb_retl( obj->waitForNewConnection ( (int) hb_parni(1), &par2 ) );
    hb_storl( par2, 2 );
  }
}


/*
static bool removeServer ( const QString & name )
*/
HB_FUNC_STATIC( QLOCALSERVER_REMOVESERVER )
{
  hb_retl( QLocalServer::removeServer ( PQSTRING(1) ) );
}




#pragma ENDDUMP
