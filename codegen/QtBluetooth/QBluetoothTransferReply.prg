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

/*
virtual bool isFinished() const = 0
*/
$method=5,2,0|bool|isFinished|

/*
virtual bool isRunning() const = 0
*/
$method=5,2,0|bool|isRunning|

/*
QBluetoothTransferManager *manager() const
*/
$method=5,2,0|QBluetoothTransferManager *|manager|

/*
virtual TransferError error() const = 0
*/
$method=5,2,0|QBluetoothTransferReply::TransferError|error|

/*
virtual QString errorString() const = 0
*/
$method=5,2,0|QString|errorString|

/*
QBluetoothTransferRequest request() const
*/
$method=5,2,0|QBluetoothTransferRequest|request|

/*
void abort()
*/
$method=5,2,0|void|abort|

#pragma ENDDUMP
