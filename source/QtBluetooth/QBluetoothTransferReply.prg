/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBLUETOOTHTRANSFERMANAGER
REQUEST QBLUETOOTHTRANSFERREQUEST
#endif

CLASS QBluetoothTransferReply INHERIT QObject

   DATA class_id INIT Class_Id_QBluetoothTransferReply
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

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

PROCEDURE destroyObject () CLASS QBluetoothTransferReply
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QBluetoothTransferReply>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QBluetoothTransferReply>
#endif
#endif


HB_FUNC_STATIC( QBLUETOOTHTRANSFERREPLY_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothTransferReply * obj = (QBluetoothTransferReply *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
virtual bool isFinished() const = 0
*/
HB_FUNC_STATIC( QBLUETOOTHTRANSFERREPLY_ISFINISHED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothTransferReply * obj = (QBluetoothTransferReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isFinished (  ) );
  }
#endif
}


/*
virtual bool isRunning() const = 0
*/
HB_FUNC_STATIC( QBLUETOOTHTRANSFERREPLY_ISRUNNING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothTransferReply * obj = (QBluetoothTransferReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isRunning (  ) );
  }
#endif
}


/*
QBluetoothTransferManager *manager() const
*/
HB_FUNC_STATIC( QBLUETOOTHTRANSFERREPLY_MANAGER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothTransferReply * obj = (QBluetoothTransferReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QBluetoothTransferManager * ptr = obj->manager (  );
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
    hb_retni( obj->error (  ) );
  }
#endif
}


/*
virtual QString errorString() const = 0
*/
HB_FUNC_STATIC( QBLUETOOTHTRANSFERREPLY_ERRORSTRING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothTransferReply * obj = (QBluetoothTransferReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->errorString (  ).toLatin1().data() );
  }
#endif
}


/*
QBluetoothTransferRequest request() const
*/
HB_FUNC_STATIC( QBLUETOOTHTRANSFERREPLY_REQUEST )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothTransferReply * obj = (QBluetoothTransferReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QBluetoothTransferRequest * ptr = new QBluetoothTransferRequest( obj->request (  ) );
    _qt5xhb_createReturnClass ( ptr, "QBLUETOOTHTRANSFERREQUEST" );
  }
#endif
}


/*
void abort()
*/
HB_FUNC_STATIC( QBLUETOOTHTRANSFERREPLY_ABORT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothTransferReply * obj = (QBluetoothTransferReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->abort (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}




#pragma ENDDUMP
