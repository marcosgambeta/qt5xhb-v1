%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBLUETOOTHTRANSFERMANAGER
REQUEST QBLUETOOTHTRANSFERREQUEST
#endif

CLASS QBluetoothTransferReply INHERIT QObject

   METHOD delete
   METHOD isFinished
   METHOD isRunning
   METHOD manager
   METHOD error
   METHOD errorString
   METHOD request
   METHOD abort

   METHOD onFinished
   METHOD onTransferProgress

   DESTRUCTOR destroyObject

END CLASS

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

$connectSignalFunction

$signalMethod=5,2,0|finished(QBluetoothTransferReply*)
$signalMethod=5,2,0|transferProgress(qint64,qint64)

#pragma ENDDUMP
