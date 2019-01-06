%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtBluetooth

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,2,0

$deleteMethod=5,2,0

$prototype=virtual bool isFinished() const = 0
$virtualMethod=5,2,0|bool|isFinished|

$prototype=virtual bool isRunning() const = 0
$virtualMethod=5,2,0|bool|isRunning|

$prototype=QBluetoothTransferManager *manager() const
$method=5,2,0|QBluetoothTransferManager *|manager|

$prototype=virtual TransferError error() const = 0
$virtualMethod=5,2,0|QBluetoothTransferReply::TransferError|error|

$prototype=virtual QString errorString() const = 0
$virtualMethod=5,2,0|QString|errorString|

$prototype=QBluetoothTransferRequest request() const
$method=5,2,0|QBluetoothTransferRequest|request|

$prototype=void abort()
$method=5,2,0|void|abort|

$beginSignals
$signal=5,2,0|finished(QBluetoothTransferReply*)
$signal=5,2,0|transferProgress(qint64,qint64)
$endSignals

#pragma ENDDUMP
