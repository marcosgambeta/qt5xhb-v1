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

$addRequests

$beginClassFrom=QTcpSocket

   METHOD new
   METHOD delete

   METHOD close
   METHOD disconnectFromHost
   METHOD isInDatagramMode
   METHOD maximumChannelCount
   METHOD readDatagram
   METHOD setMaximumChannelCount
   METHOD writeDatagram

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,8,0

$prototype=explicit QSctpSocket(QObject *parent = nullptr)
$constructor=5,8,0|new|QObject *=0|#if !defined(QT_NO_SCTP)

$prototype=virtual ~QSctpSocket()
$deleteMethod=5,8,0|#if !defined(QT_NO_SCTP)

$prototype=void close() Q_DECL_OVERRIDE
$method=5,8,0|void|close||#if !defined(QT_NO_SCTP)

$prototype=void disconnectFromHost() Q_DECL_OVERRIDE
$method=5,8,0|void|disconnectFromHost||#if !defined(QT_NO_SCTP)

$prototype=void setMaximumChannelCount(int count)
$method=5,8,0|void|setMaximumChannelCount|int|#if !defined(QT_NO_SCTP)

$prototype=int maximumChannelCount() const
$method=5,8,0|int|maximumChannelCount||#if !defined(QT_NO_SCTP)

$prototype=bool isInDatagramMode() const
$method=5,8,0|bool|isInDatagramMode||#if !defined(QT_NO_SCTP)

$prototype=QNetworkDatagram readDatagram()
$method=5,8,0|QNetworkDatagram|readDatagram||#if !defined(QT_NO_SCTP)

$prototype=bool writeDatagram(const QNetworkDatagram &datagram)
$method=5,8,0|bool|writeDatagram|const QNetworkDatagram &|#if !defined(QT_NO_SCTP)

$prototype=qint64 readData(char *data, qint64 maxlen) Q_DECL_OVERRIDE (protected)

$prototype=qint64 readLineData(char *data, qint64 maxlen) Q_DECL_OVERRIDE (protected)

#pragma ENDDUMP
