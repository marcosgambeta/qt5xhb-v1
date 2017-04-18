/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"


CLASS QUdpSocket INHERIT QAbstractSocket

   DATA class_id INIT Class_Id_QUdpSocket
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD bind1
   METHOD bind2
   METHOD bind3
   METHOD bind4
   METHOD bind
   METHOD hasPendingDatagrams
   METHOD pendingDatagramSize
   METHOD readDatagram
   METHOD writeDatagram1
   METHOD writeDatagram2
   METHOD writeDatagram
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QUdpSocket
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QUdpSocket>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QUdpSocket>
#endif

/*
QUdpSocket ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QUDPSOCKET_NEW )
{
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QUdpSocket * o = new QUdpSocket ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QUDPSOCKET_DELETE )
{
  QUdpSocket * obj = (QUdpSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool bind ( const QHostAddress & address, quint16 port )
*/
HB_FUNC_STATIC( QUDPSOCKET_BIND1 )
{
  QUdpSocket * obj = (QUdpSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QHostAddress * par1 = (QHostAddress *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->bind ( *par1, (quint16) hb_parni(2) ) );
  }
}

/*
bool bind ( const QHostAddress & address, quint16 port, BindMode mode )
*/
HB_FUNC_STATIC( QUDPSOCKET_BIND2 )
{
  QUdpSocket * obj = (QUdpSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QHostAddress * par1 = (QHostAddress *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->bind ( *par1, (quint16) hb_parni(2) ) );
  }
}

/*
bool bind ( quint16 port = 0 )
*/
HB_FUNC_STATIC( QUDPSOCKET_BIND3 )
{
  QUdpSocket * obj = (QUdpSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->bind ( (quint16) ISNIL(1)? 0 : hb_parni(1) ) );
  }
}

/*
bool bind ( quint16 port, BindMode mode )
*/
HB_FUNC_STATIC( QUDPSOCKET_BIND4 )
{
  QUdpSocket * obj = (QUdpSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->bind ( (quint16) hb_parni(1) ) );
  }
}


//[1]bool bind ( const QHostAddress & address, quint16 port )
//[2]bool bind ( const QHostAddress & address, quint16 port, BindMode mode )
//[3]bool bind ( quint16 port = 0 )
//[4]bool bind ( quint16 port, BindMode mode )

HB_FUNC_STATIC( QUDPSOCKET_BIND )
{
  if( ISNUMPAR(2) && ISQHOSTADDRESS(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QUDPSOCKET_BIND1 );
  }
  else if( ISNUMPAR(3) && ISQHOSTADDRESS(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QUDPSOCKET_BIND2 );
  }
  else if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QUDPSOCKET_BIND3 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QUDPSOCKET_BIND4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool hasPendingDatagrams () const
*/
HB_FUNC_STATIC( QUDPSOCKET_HASPENDINGDATAGRAMS )
{
  QUdpSocket * obj = (QUdpSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->hasPendingDatagrams (  ) );
  }
}


/*
qint64 pendingDatagramSize () const
*/
HB_FUNC_STATIC( QUDPSOCKET_PENDINGDATAGRAMSIZE )
{
  QUdpSocket * obj = (QUdpSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->pendingDatagramSize (  ) );
  }
}


/*
qint64 readDatagram ( char * data, qint64 maxSize, QHostAddress * address = 0, quint16 * port = 0 )
*/
HB_FUNC_STATIC( QUDPSOCKET_READDATAGRAM )
{
  QUdpSocket * obj = (QUdpSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    char * par1 = (char *) _qt5xhb_itemGetPtr(1);
    QHostAddress * par3 = ISNIL(3)? 0 : (QHostAddress *) _qt5xhb_itemGetPtr(3);
    quint16 * par4 = ISNIL(4)? 0 : (quint16 *) _qt5xhb_itemGetPtr(4);
    hb_retni( obj->readDatagram ( par1, (qint64) hb_parni(2), par3, par4 ) );
  }
}


/*
qint64 writeDatagram ( const char * data, qint64 size, const QHostAddress & address, quint16 port )
*/
HB_FUNC_STATIC( QUDPSOCKET_WRITEDATAGRAM1 )
{
  QUdpSocket * obj = (QUdpSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const char * par1 = hb_parc(1);
    QHostAddress * par3 = (QHostAddress *) _qt5xhb_itemGetPtr(3);
    hb_retni( obj->writeDatagram (  (const char *) par1, (qint64) hb_parni(2), *par3, (quint16) hb_parni(4) ) );
  }
}

/*
qint64 writeDatagram ( const QByteArray & datagram, const QHostAddress & host, quint16 port )
*/
HB_FUNC_STATIC( QUDPSOCKET_WRITEDATAGRAM2 )
{
  QUdpSocket * obj = (QUdpSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) _qt5xhb_itemGetPtr(1);
    QHostAddress * par2 = (QHostAddress *) _qt5xhb_itemGetPtr(2);
    hb_retni( obj->writeDatagram ( *par1, *par2, (quint16) hb_parni(3) ) );
  }
}


//[1]qint64 writeDatagram ( const char * data, qint64 size, const QHostAddress & address, quint16 port )
//[2]qint64 writeDatagram ( const QByteArray & datagram, const QHostAddress & host, quint16 port )

HB_FUNC_STATIC( QUDPSOCKET_WRITEDATAGRAM )
{
  if( ISNUMPAR(4) && ISCHAR(1) && ISNUM(2) && ISQHOSTADDRESS(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QUDPSOCKET_WRITEDATAGRAM1 );
  }
  else if( ISNUMPAR(3) && ISQBYTEARRAY(1) && ISQHOSTADDRESS(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QUDPSOCKET_WRITEDATAGRAM2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}


#pragma ENDDUMP
