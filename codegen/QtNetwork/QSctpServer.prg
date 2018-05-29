%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

%% TODO: class under condition
%% #if !defined(QT_NO_SCTP) || defined(Q_CLANG_QDOC)
%% #endif // QT_NO_SCTP

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QTcpServer

   METHOD new
   METHOD delete

   METHOD maximumChannelCount
   METHOD nextPendingDatagramConnection
   METHOD setMaximumChannelCount

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,8,0

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#if !defined(QT_NO_SCTP)
#include <QSctpSocket>
#endif
#endif

$prototype=explicit QSctpServer(QObject *parent = nullptr)
$constructor=5,8,0|new|QObject *=0|#if !defined(QT_NO_SCTP)

$prototype=virtual ~QSctpServer()
$deleteMethod=5,8,0|#if !defined(QT_NO_SCTP)

$prototype=void setMaximumChannelCount(int count)
$method=5,8,0|void|setMaximumChannelCount|int|#if !defined(QT_NO_SCTP)

$prototype=int maximumChannelCount() const
$method=5,8,0|int|maximumChannelCount||#if !defined(QT_NO_SCTP)

$prototype=QSctpSocket *nextPendingDatagramConnection()
$method=5,8,0|QSctpSocket *|nextPendingDatagramConnection||#if !defined(QT_NO_SCTP)

$prototype=void incomingConnection(qintptr handle) Q_DECL_OVERRIDE (protected)

#pragma ENDDUMP
