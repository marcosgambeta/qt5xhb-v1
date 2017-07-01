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

PROCEDURE destroyObject () CLASS QBluetoothTransferManager
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QBluetoothTransferManager>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QBluetoothTransferManager>
#endif
#endif

/*
QBluetoothTransferManager(QObject *parent = 0)
*/
HB_FUNC_STATIC( QBLUETOOTHTRANSFERMANAGER_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QBluetoothTransferManager * o = new QBluetoothTransferManager ( OPQOBJECT(1,0) );
    _qt5xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

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
