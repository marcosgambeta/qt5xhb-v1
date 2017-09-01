$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBLUETOOTHTRANSFERREPLY
#endif

CLASS QBluetoothTransferManager INHERIT QObject

   METHOD new
   METHOD delete
   METHOD put

   METHOD onFinished

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,2,0

/*
QBluetoothTransferManager(QObject *parent = 0)
*/
$constructor=5,2,0|new|QObject *=0

$deleteMethod=5,2,0

/*
QBluetoothTransferReply *put(const QBluetoothTransferRequest &request, QIODevice *data)
*/
$method=5,2,0|QBluetoothTransferReply *|put|const QBluetoothTransferRequest &,QIODevice *

#pragma ENDDUMP
