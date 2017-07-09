$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBLUETOOTHTRANSFERREPLY
#endif

CLASS QBluetoothTransferManager INHERIT QObject

   DATA self_destruction INIT .F.

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
HB_FUNC_STATIC( QBLUETOOTHTRANSFERMANAGER_PUT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothTransferManager * obj = (QBluetoothTransferManager *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQBLUETOOTHTRANSFERREQUEST(1) && ISQIODEVICE(2) )
    {
      QBluetoothTransferReply * ptr = obj->put ( *PQBLUETOOTHTRANSFERREQUEST(1), PQIODEVICE(2) );
      _qt5xhb_createReturnClass ( ptr, "QBLUETOOTHTRANSFERREPLY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

#pragma ENDDUMP
