%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtNetwork

$header

%% TODO:
%% #ifndef QT_NO_UDPSOCKET
%% #endif // QT_NO_UDPSOCKET

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,8,0

$prototype=QNetworkDatagram()
$internalConstructor=5,8,0|new1|

$prototype=QNetworkDatagram(const QByteArray &data, const QHostAddress &destinationAddress = QHostAddress(), quint16 port = 0) (implicit)
$internalConstructor=5,8,0|new2|const QByteArray &,const QHostAddress &=QHostAddress(),quint16=0

$prototype=QNetworkDatagram(const QNetworkDatagram &other)
$internalConstructor=5,8,0|new3|const QNetworkDatagram &

$prototype=explicit QNetworkDatagram(QNetworkDatagramPrivate &dd) [private]

//[1]QNetworkDatagram()
//[2]QNetworkDatagram(const QByteArray &data, const QHostAddress &destinationAddress = QHostAddress(), quint16 port = 0) (implicit)
//[3]QNetworkDatagram(const QNetworkDatagram &other)

HB_FUNC_STATIC( QNETWORKDATAGRAM_NEW )
{
  if( ISNUMPAR(0) )
  {
    QNetworkDatagram_new1();
  }
  else if( ISBETWEEN(1,3) && ISQBYTEARRAY(1) && (ISQHOSTADDRESS(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    QNetworkDatagram_new2();
  }
  else if( ISNUMPAR(1) && ISQNETWORKDATAGRAM(1) )
  {
    QNetworkDatagram_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QNetworkDatagram()
$deleteMethod=5,8,0

$prototype=void swap(QNetworkDatagram &other) Q_DECL_NOTHROW
$method=5,8,0|void|swap|QNetworkDatagram &

$prototype=void clear()
$method=5,8,0|void|clear|

$prototype=bool isValid() const
$method=5,8,0|bool|isValid|

$prototype=bool isNull() const
$method=5,8,0|bool|isNull|

$prototype=uint interfaceIndex() const
$method=5,8,0|uint|interfaceIndex|

$prototype=void setInterfaceIndex(uint index)
$method=5,8,0|void|setInterfaceIndex|uint

$prototype=QHostAddress senderAddress() const
$method=5,8,0|QHostAddress|senderAddress|

$prototype=QHostAddress destinationAddress() const
$method=5,8,0|QHostAddress|destinationAddress|

$prototype=int senderPort() const
$method=5,8,0|int|senderPort|

$prototype=int destinationPort() const
$method=5,8,0|int|destinationPort|

$prototype=void setSender(const QHostAddress &address, quint16 port = 0)
$method=5,8,0|void|setSender|const QHostAddress &,quint16=0

$prototype=void setDestination(const QHostAddress &address, quint16 port)
$method=5,8,0|void|setDestination|const QHostAddress &,quint16

$prototype=int hopLimit() const
$method=5,8,0|int|hopLimit|

$prototype=void setHopLimit(int count)
$method=5,8,0|void|setHopLimit|int

$prototype=QByteArray data() const
$method=5,8,0|QByteArray|data|

$prototype=void setData(const QByteArray &data)
$method=5,8,0|void|setData|const QByteArray &

$prototype=QNetworkDatagram makeReply(const QByteArray &paylaod) const
$method=5,8,0|QNetworkDatagram|makeReply|const QByteArray &

$prototype=QNetworkDatagram makeReply_helper(const QByteArray &data) const [private]

$prototype=void makeReply_helper_inplace(const QByteArray &data) [private]

$prototype=static void destroy(QNetworkDatagramPrivate *d) [private]

$extraMethods

#pragma ENDDUMP
