/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QBLUETOOTHTRANSFERREPLY
#endif

CLASS QBluetoothTransferManager INHERIT QObject

   DATA class_id INIT Class_Id_QBluetoothTransferManager
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

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
#include <QBluetoothTransferManager>
#endif
#endif

/*
QBluetoothTransferManager(QObject *parent = 0)
*/
HB_FUNC_STATIC( QBLUETOOTHTRANSFERMANAGER_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qtxhb_itemGetPtr(1);
  QBluetoothTransferManager * o = new QBluetoothTransferManager ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QBluetoothTransferManager *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QBLUETOOTHTRANSFERMANAGER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothTransferManager * obj = (QBluetoothTransferManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QBluetoothTransferReply *put(const QBluetoothTransferRequest &request, QIODevice *data)
*/
HB_FUNC_STATIC( QBLUETOOTHTRANSFERMANAGER_PUT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothTransferManager * obj = (QBluetoothTransferManager *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QBluetoothTransferRequest * par1 = (QBluetoothTransferRequest *) _qtxhb_itemGetPtr(1);
    QIODevice * par2 = (QIODevice *) _qtxhb_itemGetPtr(2);
    QBluetoothTransferReply * ptr = obj->put ( *par1, par2 );
    _qt5xhb_createReturnClass ( ptr, "QBLUETOOTHTRANSFERREPLY" );
  }
#endif
}




#pragma ENDDUMP
