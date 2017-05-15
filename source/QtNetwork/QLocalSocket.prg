/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QLocalSocket INHERIT QIODevice

   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD abort
   METHOD connectToServer
   METHOD disconnectFromServer
   METHOD error
   METHOD flush
   METHOD fullServerName
   METHOD isValid
   METHOD readBufferSize
   METHOD serverName
   METHOD setReadBufferSize
   METHOD state
   METHOD waitForConnected
   METHOD waitForDisconnected
   METHOD bytesAvailable
   METHOD bytesToWrite
   METHOD canReadLine
   METHOD close
   METHOD isSequential
   METHOD waitForBytesWritten
   METHOD waitForReadyRead

   METHOD onConnected
   METHOD onDisconnected
   METHOD onError
   METHOD onStateChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QLocalSocket
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QLocalSocket>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QLocalSocket>
#endif

/*
QLocalSocket ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QLOCALSOCKET_NEW )
{
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QLocalSocket * o = new QLocalSocket ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QLOCALSOCKET_DELETE )
{
  QLocalSocket * obj = (QLocalSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void abort ()
*/
HB_FUNC_STATIC( QLOCALSOCKET_ABORT )
{
  QLocalSocket * obj = (QLocalSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->abort ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void connectToServer ( const QString & name, OpenMode openMode = ReadWrite )
*/
HB_FUNC_STATIC( QLOCALSOCKET_CONNECTTOSERVER )
{
  QLocalSocket * obj = (QLocalSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = ISNIL(2)? (int) QLocalSocket::ReadWrite : hb_parni(2);
    obj->connectToServer ( PQSTRING(1),  (QLocalSocket::OpenMode) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void disconnectFromServer ()
*/
HB_FUNC_STATIC( QLOCALSOCKET_DISCONNECTFROMSERVER )
{
  QLocalSocket * obj = (QLocalSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->disconnectFromServer ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
LocalSocketError error () const
*/
HB_FUNC_STATIC( QLOCALSOCKET_ERROR )
{
  QLocalSocket * obj = (QLocalSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->error () );
  }
}


/*
bool flush ()
*/
HB_FUNC_STATIC( QLOCALSOCKET_FLUSH )
{
  QLocalSocket * obj = (QLocalSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->flush () );
  }
}


/*
QString fullServerName () const
*/
HB_FUNC_STATIC( QLOCALSOCKET_FULLSERVERNAME )
{
  QLocalSocket * obj = (QLocalSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->fullServerName ().toLatin1().data() );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QLOCALSOCKET_ISVALID )
{
  QLocalSocket * obj = (QLocalSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid () );
  }
}


/*
qint64 readBufferSize () const
*/
HB_FUNC_STATIC( QLOCALSOCKET_READBUFFERSIZE )
{
  QLocalSocket * obj = (QLocalSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->readBufferSize () );
  }
}


/*
QString serverName () const
*/
HB_FUNC_STATIC( QLOCALSOCKET_SERVERNAME )
{
  QLocalSocket * obj = (QLocalSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->serverName ().toLatin1().data() );
  }
}


/*
void setReadBufferSize ( qint64 size )
*/
HB_FUNC_STATIC( QLOCALSOCKET_SETREADBUFFERSIZE )
{
  QLocalSocket * obj = (QLocalSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setReadBufferSize ( (qint64) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




/*
LocalSocketState state () const
*/
HB_FUNC_STATIC( QLOCALSOCKET_STATE )
{
  QLocalSocket * obj = (QLocalSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->state () );
  }
}


/*
bool waitForConnected ( int msecs = 30000 )
*/
HB_FUNC_STATIC( QLOCALSOCKET_WAITFORCONNECTED )
{
  QLocalSocket * obj = (QLocalSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->waitForConnected ( (int) ISNIL(1)? 30000 : hb_parni(1) ) );
  }
}


/*
bool waitForDisconnected ( int msecs = 30000 )
*/
HB_FUNC_STATIC( QLOCALSOCKET_WAITFORDISCONNECTED )
{
  QLocalSocket * obj = (QLocalSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->waitForDisconnected ( (int) ISNIL(1)? 30000 : hb_parni(1) ) );
  }
}


/*
virtual qint64 bytesAvailable () const
*/
HB_FUNC_STATIC( QLOCALSOCKET_BYTESAVAILABLE )
{
  QLocalSocket * obj = (QLocalSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->bytesAvailable () );
  }
}


/*
virtual qint64 bytesToWrite () const
*/
HB_FUNC_STATIC( QLOCALSOCKET_BYTESTOWRITE )
{
  QLocalSocket * obj = (QLocalSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->bytesToWrite () );
  }
}


/*
virtual bool canReadLine () const
*/
HB_FUNC_STATIC( QLOCALSOCKET_CANREADLINE )
{
  QLocalSocket * obj = (QLocalSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->canReadLine () );
  }
}


/*
virtual void close ()
*/
HB_FUNC_STATIC( QLOCALSOCKET_CLOSE )
{
  QLocalSocket * obj = (QLocalSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->close ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool isSequential () const
*/
HB_FUNC_STATIC( QLOCALSOCKET_ISSEQUENTIAL )
{
  QLocalSocket * obj = (QLocalSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isSequential () );
  }
}


/*
virtual bool waitForBytesWritten ( int msecs = 30000 )
*/
HB_FUNC_STATIC( QLOCALSOCKET_WAITFORBYTESWRITTEN )
{
  QLocalSocket * obj = (QLocalSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->waitForBytesWritten ( (int) ISNIL(1)? 30000 : hb_parni(1) ) );
  }
}


/*
virtual bool waitForReadyRead ( int msecs = 30000 )
*/
HB_FUNC_STATIC( QLOCALSOCKET_WAITFORREADYREAD )
{
  QLocalSocket * obj = (QLocalSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->waitForReadyRead ( (int) ISNIL(1)? 30000 : hb_parni(1) ) );
  }
}




#pragma ENDDUMP
