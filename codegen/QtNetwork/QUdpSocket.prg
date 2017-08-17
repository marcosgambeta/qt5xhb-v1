$header

#include "hbclass.ch"

CLASS QUdpSocket INHERIT QAbstractSocket

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

$destructor

#pragma BEGINDUMP

$includes

/*
QUdpSocket ( QObject * parent = 0 )
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
bool bind ( const QHostAddress & address, quint16 port )
*/
$method=|bool|bind,bind1|const QHostAddress &,quint16

/*
bool bind ( const QHostAddress & address, quint16 port, BindMode mode )
*/
$method=|bool|bind,bind2|const QHostAddress &,quint16,QAbstractSocket::BindMode

/*
bool bind ( quint16 port = 0 )
*/
$method=|bool|bind,bind3|quint16=0

/*
bool bind ( quint16 port, BindMode mode )
*/
$method=|bool|bind,bind4|quint16,QAbstractSocket::BindMode

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
  else if( ISBETWEEN(0,1) && ISOPTNUM(1) )
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
$method=|bool|hasPendingDatagrams|

/*
qint64 pendingDatagramSize () const
*/
$method=|qint64|pendingDatagramSize|

/*
qint64 readDatagram ( char * data, qint64 maxSize, QHostAddress * address = 0, quint16 * port = 0 )
*/
$method=|qint64|readDatagram|char *,qint64,QHostAddress *=0,quint16 *=0

/*
qint64 writeDatagram ( const char * data, qint64 size, const QHostAddress & address, quint16 port )
*/
$method=|qint64|writeDatagram,writeDatagram1|const char *,qint64,const QHostAddress &,quint16

/*
qint64 writeDatagram ( const QByteArray & datagram, const QHostAddress & host, quint16 port )
*/
$method=|qint64|writeDatagram,writeDatagram2|const QByteArray &,const QHostAddress &,quint16

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
