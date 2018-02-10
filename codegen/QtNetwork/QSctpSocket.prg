%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

%% TODO:
%% #if !defined(QT_NO_SCTP) || defined(Q_CLANG_QDOC)
%% #endif // QT_NO_SCTP

#include "hbclass.ch"

CLASS QSctpSocket INHERIT QTcpSocket

   METHOD new
   METHOD delete

   METHOD close
   METHOD disconnectFromHost
   METHOD isInDatagramMode
   METHOD maximumChannelCount
   METHOD readDatagram
   METHOD setMaximumChannelCount
   METHOD writeDatagram

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QSctpSocket(QObject *parent = nullptr)
$constructor=|new|QObject *=0

$prototype=virtual ~QSctpSocket()
$deleteMethod

$prototype=void close() Q_DECL_OVERRIDE
$method=|void|close|

$prototype=void disconnectFromHost() Q_DECL_OVERRIDE
$method=|void|disconnectFromHost|

$prototype=void setMaximumChannelCount(int count)
$method=|void|setMaximumChannelCount|int

$prototype=int maximumChannelCount() const
$method=|int|maximumChannelCount|

$prototype=bool isInDatagramMode() const
$method=|bool|isInDatagramMode|

$prototype=QNetworkDatagram readDatagram()
$method=|QNetworkDatagram|readDatagram|

$prototype=bool writeDatagram(const QNetworkDatagram &datagram)
$method=|bool|writeDatagram|const QNetworkDatagram &

$prototype=qint64 readData(char *data, qint64 maxlen) Q_DECL_OVERRIDE (protected)

$prototype=qint64 readLineData(char *data, qint64 maxlen) Q_DECL_OVERRIDE (protected)

#pragma ENDDUMP
