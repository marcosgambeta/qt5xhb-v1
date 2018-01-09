%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QUdpSocket INHERIT QAbstractSocket

   METHOD new
   METHOD delete
   METHOD bind
   METHOD hasPendingDatagrams
   METHOD pendingDatagramSize
   METHOD readDatagram
   METHOD writeDatagram

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QUdpSocket ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototype=bool bind ( const QHostAddress & address, quint16 port )
$internalMethod=|bool|bind,bind1|const QHostAddress &,quint16

$prototype=bool bind ( const QHostAddress & address, quint16 port, BindMode mode )
$internalMethod=|bool|bind,bind2|const QHostAddress &,quint16,QAbstractSocket::BindMode

$prototype=bool bind ( quint16 port = 0 )
$internalMethod=|bool|bind,bind3|quint16=0

$prototype=bool bind ( quint16 port, BindMode mode )
$internalMethod=|bool|bind,bind4|quint16,QAbstractSocket::BindMode

//[1]bool bind ( const QHostAddress & address, quint16 port )
//[2]bool bind ( const QHostAddress & address, quint16 port, BindMode mode )
//[3]bool bind ( quint16 port = 0 )
//[4]bool bind ( quint16 port, BindMode mode )

HB_FUNC_STATIC( QUDPSOCKET_BIND )
{
  if( ISNUMPAR(2) && ISQHOSTADDRESS(1) && ISNUM(2) )
  {
    QUdpSocket_bind1();
  }
  else if( ISNUMPAR(3) && ISQHOSTADDRESS(1) && ISNUM(2) && ISNUM(3) )
  {
    QUdpSocket_bind2();
  }
  else if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QUdpSocket_bind3();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QUdpSocket_bind4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=bool hasPendingDatagrams () const
$method=|bool|hasPendingDatagrams|

$prototype=qint64 pendingDatagramSize () const
$method=|qint64|pendingDatagramSize|

$prototype=qint64 readDatagram ( char * data, qint64 maxSize, QHostAddress * address = 0, quint16 * port = 0 )
$method=|qint64|readDatagram|char *,qint64,QHostAddress *=0,quint16 *=0

$prototype=qint64 writeDatagram ( const char * data, qint64 size, const QHostAddress & address, quint16 port )
$internalMethod=|qint64|writeDatagram,writeDatagram1|const char *,qint64,const QHostAddress &,quint16

$prototype=qint64 writeDatagram ( const QByteArray & datagram, const QHostAddress & host, quint16 port )
$internalMethod=|qint64|writeDatagram,writeDatagram2|const QByteArray &,const QHostAddress &,quint16

//[1]qint64 writeDatagram ( const char * data, qint64 size, const QHostAddress & address, quint16 port )
//[2]qint64 writeDatagram ( const QByteArray & datagram, const QHostAddress & host, quint16 port )

HB_FUNC_STATIC( QUDPSOCKET_WRITEDATAGRAM )
{
  if( ISNUMPAR(4) && ISCHAR(1) && ISNUM(2) && ISQHOSTADDRESS(3) && ISNUM(4) )
  {
    QUdpSocket_writeDatagram1();
  }
  else if( ISNUMPAR(3) && ISQBYTEARRAY(1) && ISQHOSTADDRESS(2) && ISNUM(3) )
  {
    QUdpSocket_writeDatagram2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
