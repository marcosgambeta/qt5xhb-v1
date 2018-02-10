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

CLASS QSctpServer INHERIT QTcpServer

   METHOD new
   METHOD delete

   METHOD maximumChannelCount
   METHOD nextPendingDatagramConnection
   METHOD setMaximumChannelCount

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QSctpServer(QObject *parent = nullptr)
$constructor=|new|QObject *=0

$prototype=virtual ~QSctpServer()
$deleteMethod

$prototype=void setMaximumChannelCount(int count)
$method=|void|setMaximumChannelCount|int

$prototype=int maximumChannelCount() const
$method=|int|maximumChannelCount|

$prototype=QSctpSocket *nextPendingDatagramConnection()
$method=|QSctpSocket *|nextPendingDatagramConnection|

$prototype=void incomingConnection(qintptr handle) Q_DECL_OVERRIDE (protected)

#pragma ENDDUMP
