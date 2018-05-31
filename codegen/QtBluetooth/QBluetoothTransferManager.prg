%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

   METHOD new
   METHOD delete
   METHOD put

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,2,0

#include <QBluetoothTransferReply>

$prototype=QBluetoothTransferManager(QObject *parent = 0)
$constructor=5,2,0|new|QObject *=0

$deleteMethod=5,2,0

$prototype=QBluetoothTransferReply *put(const QBluetoothTransferRequest &request, QIODevice *data)
$method=5,2,0|QBluetoothTransferReply *|put|const QBluetoothTransferRequest &,QIODevice *

$beginSignals
$signal=5,2,0|finished(QBluetoothTransferReply*)
$endSignals

#pragma ENDDUMP
