/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QHOSTADDRESS
REQUEST QNETWORKPROXY
REQUEST QVARIANT
#endif

CLASS QAbstractSocket INHERIT QIODevice

   //DATA class_id INIT Class_Id_QAbstractSocket
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD abort
   METHOD connectToHost1
   METHOD connectToHost2
   METHOD disconnectFromHost
   METHOD error
   METHOD flush
   METHOD isValid
   METHOD localAddress
   METHOD localPort
   METHOD peerAddress
   METHOD peerName
   METHOD peerPort
   METHOD proxy
   METHOD readBufferSize
   METHOD setProxy
   METHOD setReadBufferSize
   METHOD setSocketDescriptor
   METHOD setSocketOption
   METHOD socketDescriptor
   METHOD socketOption
   METHOD socketType
   METHOD state
   METHOD waitForConnected
   METHOD waitForDisconnected
   METHOD atEnd
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
   METHOD onHostFound
   METHOD onProxyAuthenticationRequired
   METHOD onStateChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractSocket
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAbstractSocket>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAbstractSocket>
#endif

#include <QHostAddress>
#include <QNetworkProxy>

/*
QAbstractSocket ( SocketType socketType, QObject * parent )
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_NEW )
{
  int par1 = hb_parni(1);
  QObject * par2 = (QObject *) _qt5xhb_itemGetPtr(2);
  QAbstractSocket * o = new QAbstractSocket (  (QAbstractSocket::SocketType) par1, par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QABSTRACTSOCKET_DELETE )
{
  QAbstractSocket * obj = (QAbstractSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC_STATIC( QABSTRACTSOCKET_ABORT )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->abort (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void connectToHost ( const QString & hostName, quint16 port, OpenMode openMode = ReadWrite )
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_CONNECTTOHOST1 )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    int par3 = ISNIL(3)? (int) QAbstractSocket::ReadWrite : hb_parni(3);
    obj->connectToHost ( par1, (quint16) hb_parni(2),  (QAbstractSocket::OpenMode) par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void connectToHost ( const QHostAddress & address, quint16 port, OpenMode openMode = ReadWrite )
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_CONNECTTOHOST2 )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QHostAddress * par1 = (QHostAddress *) _qt5xhb_itemGetPtr(1);
    int par3 = ISNIL(3)? (int) QAbstractSocket::ReadWrite : hb_parni(3);
    obj->connectToHost ( *par1, (quint16) hb_parni(2),  (QAbstractSocket::OpenMode) par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void disconnectFromHost ()
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_DISCONNECTFROMHOST )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->disconnectFromHost (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
SocketError error () const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_ERROR )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->error (  ) );
  }
}


/*
bool flush ()
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_FLUSH )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->flush (  ) );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_ISVALID )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
QHostAddress localAddress () const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_LOCALADDRESS )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QHostAddress * ptr = new QHostAddress( obj->localAddress (  ) );
    _qt5xhb_createReturnClass ( ptr, "QHOSTADDRESS", true );
  }
}


/*
quint16 localPort () const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_LOCALPORT )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->localPort (  ) );
  }
}


/*
QHostAddress peerAddress () const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_PEERADDRESS )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QHostAddress * ptr = new QHostAddress( obj->peerAddress (  ) );
    _qt5xhb_createReturnClass ( ptr, "QHOSTADDRESS", true );
  }
}


/*
QString peerName () const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_PEERNAME )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->peerName (  ).toLatin1().data() );
  }
}


/*
quint16 peerPort () const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_PEERPORT )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->peerPort (  ) );
  }
}


/*
QNetworkProxy proxy () const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_PROXY )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkProxy * ptr = new QNetworkProxy( obj->proxy (  ) );
    _qt5xhb_createReturnClass ( ptr, "QNETWORKPROXY", true );
  }
}


/*
qint64 readBufferSize () const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_READBUFFERSIZE )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->readBufferSize (  ) );
  }
}


/*
void setProxy ( const QNetworkProxy & networkProxy )
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_SETPROXY )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkProxy * par1 = (QNetworkProxy *) _qt5xhb_itemGetPtr(1);
    obj->setProxy ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setReadBufferSize ( qint64 size )
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_SETREADBUFFERSIZE )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setReadBufferSize ( (qint64) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool setSocketDescriptor ( int socketDescriptor, SocketState socketState = ConnectedState, OpenMode openMode = ReadWrite )
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_SETSOCKETDESCRIPTOR )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = ISNIL(2)? (int) QAbstractSocket::ConnectedState : hb_parni(2);
    int par3 = ISNIL(3)? (int) QAbstractSocket::ReadWrite : hb_parni(3);
    hb_retl( obj->setSocketDescriptor ( (int) hb_parni(1),  (QAbstractSocket::SocketState) par2,  (QAbstractSocket::OpenMode) par3 ) );
  }
}


/*
void setSocketOption ( QAbstractSocket::SocketOption option, const QVariant & value )
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_SETSOCKETOPTION )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant * par2 = (QVariant *) _qt5xhb_itemGetPtr(2);
    obj->setSocketOption (  (QAbstractSocket::SocketOption) par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int socketDescriptor () const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_SOCKETDESCRIPTOR )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->socketDescriptor (  ) );
  }
}


/*
QVariant socketOption ( QAbstractSocket::SocketOption option )
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_SOCKETOPTION )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant * ptr = new QVariant( obj->socketOption (  (QAbstractSocket::SocketOption) par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
SocketType socketType () const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_SOCKETTYPE )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->socketType (  ) );
  }
}


/*
SocketState state () const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_STATE )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->state (  ) );
  }
}


/*
bool waitForConnected ( int msecs = 30000 )
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_WAITFORCONNECTED )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->waitForConnected ( (int) ISNIL(1)? 30000 : hb_parni(1) ) );
  }
}


/*
bool waitForDisconnected ( int msecs = 30000 )
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_WAITFORDISCONNECTED )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->waitForDisconnected ( (int) ISNIL(1)? 30000 : hb_parni(1) ) );
  }
}


/*
virtual bool atEnd () const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_ATEND )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->atEnd (  ) );
  }
}


/*
virtual qint64 bytesAvailable () const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_BYTESAVAILABLE )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->bytesAvailable (  ) );
  }
}


/*
virtual qint64 bytesToWrite () const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_BYTESTOWRITE )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->bytesToWrite (  ) );
  }
}


/*
virtual bool canReadLine () const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_CANREADLINE )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->canReadLine (  ) );
  }
}


/*
virtual void close ()
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_CLOSE )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->close (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool isSequential () const
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_ISSEQUENTIAL )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isSequential (  ) );
  }
}


/*
virtual bool waitForBytesWritten ( int msecs = 30000 )
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_WAITFORBYTESWRITTEN )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->waitForBytesWritten ( (int) ISNIL(1)? 30000 : hb_parni(1) ) );
  }
}


/*
virtual bool waitForReadyRead ( int msecs = 30000 )
*/
HB_FUNC_STATIC( QABSTRACTSOCKET_WAITFORREADYREAD )
{
  QAbstractSocket * obj = (QAbstractSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->waitForReadyRead ( (int) ISNIL(1)? 30000 : hb_parni(1) ) );
  }
}




#pragma ENDDUMP
