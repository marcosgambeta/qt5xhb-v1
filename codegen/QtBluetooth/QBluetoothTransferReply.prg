$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBLUETOOTHTRANSFERMANAGER
REQUEST QBLUETOOTHTRANSFERREQUEST
#endif

CLASS QBluetoothTransferReply INHERIT QObject

   DATA self_destruction INIT .F.

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
HB_FUNC_STATIC( QBLUETOOTHTRANSFERREPLY_MANAGER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothTransferReply * obj = (QBluetoothTransferReply *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QBluetoothTransferManager * ptr = obj->manager ();
    _qt5xhb_createReturnClass ( ptr, "QBLUETOOTHTRANSFERMANAGER" );
  }
#endif
}

/*
virtual TransferError error() const = 0
*/
HB_FUNC_STATIC( QBLUETOOTHTRANSFERREPLY_ERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothTransferReply * obj = (QBluetoothTransferReply *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->error () );
  }
#endif
}

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
