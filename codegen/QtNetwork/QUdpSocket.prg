%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

%% TODO:
%% #ifndef QT_NO_UDPSOCKET
%% #endif // QT_NO_UDPSOCKET

#include "hbclass.ch"

$beginClassFrom=QAbstractSocket

   METHOD new
   METHOD delete

%% #ifndef QT_NO_NETWORKINTERFACE
   METHOD joinMulticastGroup
   METHOD leaveMulticastGroup
   METHOD multicastInterface
   METHOD setMulticastInterface
%% #endif
   METHOD hasPendingDatagrams
   METHOD pendingDatagramSize
   METHOD receiveDatagram
%%   METHOD readDatagram
   METHOD writeDatagram

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QNetworkInterface>
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QNetworkDatagram>
#endif

$prototype=explicit QUdpSocket(QObject *parent = Q_NULLPTR)
$constructor=|new|QObject *=0

$prototype=virtual ~QUdpSocket()
$deleteMethod

%% #ifndef QT_NO_NETWORKINTERFACE

$prototype=bool joinMulticastGroup(const QHostAddress &groupAddress)
$internalMethod=|bool|joinMulticastGroup,joinMulticastGroup1|const QHostAddress &

$prototype=bool joinMulticastGroup(const QHostAddress &groupAddress, const QNetworkInterface &iface)
$internalMethod=|bool|joinMulticastGroup,joinMulticastGroup2|const QHostAddress &,const QNetworkInterface &

//[1]bool joinMulticastGroup(const QHostAddress &groupAddress)
//[2]bool joinMulticastGroup(const QHostAddress &groupAddress, const QNetworkInterface &iface)

HB_FUNC_STATIC( QUDPSOCKET_JOINMULTICASTGROUP )
{
  if( ISNUMPAR(1) && ISQHOSTADDRESS(1) )
  {
    QUdpSocket_joinMulticastGroup1();
  }
  else if( ISNUMPAR(2) && ISQHOSTADDRESS(1) && ISQNETWORKINTERFACE(2) )
  {
    QUdpSocket_joinMulticastGroup2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=bool leaveMulticastGroup(const QHostAddress &groupAddress)
$internalMethod=|bool|leaveMulticastGroup,leaveMulticastGroup1|const QHostAddress &

$prototype=bool leaveMulticastGroup(const QHostAddress &groupAddress, const QNetworkInterface &iface)
$internalMethod=|bool|leaveMulticastGroup,leaveMulticastGroup2|const QHostAddress &,const QNetworkInterface &

//[1]bool leaveMulticastGroup(const QHostAddress &groupAddress)
//[2]bool leaveMulticastGroup(const QHostAddress &groupAddress, const QNetworkInterface &iface)

HB_FUNC_STATIC( QUDPSOCKET_LEAVEMULTICASTGROUP )
{
  if( ISNUMPAR(1) && ISQHOSTADDRESS(1) )
  {
    QUdpSocket_leaveMulticastGroup1();
  }
  else if( ISNUMPAR(2) && ISQHOSTADDRESS(1) && ISQNETWORKINTERFACE(2) )
  {
    QUdpSocket_leaveMulticastGroup2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QNetworkInterface multicastInterface() const
$method=|QNetworkInterface|multicastInterface|

$prototype=void setMulticastInterface(const QNetworkInterface &iface)
$method=|void|setMulticastInterface|const QNetworkInterface &

%% #endif

$prototype=bool hasPendingDatagrams() const
$method=|bool|hasPendingDatagrams|

$prototype=qint64 pendingDatagramSize() const
$method=|qint64|pendingDatagramSize|

$prototype=QNetworkDatagram receiveDatagram(qint64 maxSize = -1)
$method=5,8,0|QNetworkDatagram|receiveDatagram|qint64=-1

$prototype=qint64 readDatagram(char *data, qint64 maxlen, QHostAddress *host = Q_NULLPTR, quint16 *port = Q_NULLPTR)
%% TODO: implementar
%% $method=|qint64|readDatagram|char *,qint64,QHostAddress *=0,quint16 *=0

$prototype=qint64 writeDatagram(const QNetworkDatagram &datagram)
$internalMethod=5,8,0|qint64|writeDatagram,writeDatagram1|const QNetworkDatagram &

$prototype=qint64 writeDatagram(const char *data, qint64 len, const QHostAddress &host, quint16 port)
$internalMethod=|qint64|writeDatagram,writeDatagram2|const char *,qint64,const QHostAddress &,quint16

$prototype=qint64 writeDatagram(const QByteArray &datagram, const QHostAddress &host, quint16 port)
$internalMethod=|qint64|writeDatagram,writeDatagram3|const QByteArray &,const QHostAddress &,quint16

//[1]qint64 writeDatagram(const QNetworkDatagram &datagram)
//[2]qint64 writeDatagram(const char *data, qint64 len, const QHostAddress &host, quint16 port)
//[3]qint64 writeDatagram(const QByteArray &datagram, const QHostAddress &host, quint16 port)

HB_FUNC_STATIC( QUDPSOCKET_WRITEDATAGRAM )
{
  if( ISNUMPAR(1) && ISQNETWORKDATAGRAM(1) )
  {
    QUdpSocket_writeDatagram1();
  }
  else if( ISNUMPAR(4) && ISCHAR(1) && ISNUM(2) && ISQHOSTADDRESS(3) && ISNUM(4) )
  {
    QUdpSocket_writeDatagram2();
  }
  else if( ISNUMPAR(3) && ISQBYTEARRAY(1) && ISQHOSTADDRESS(2) && ISNUM(3) )
  {
    QUdpSocket_writeDatagram3();
  }
}

#pragma ENDDUMP
