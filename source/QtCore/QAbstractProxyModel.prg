/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QMODELINDEX

CLASS QAbstractProxyModel INHERIT QAbstractItemModel

   DATA class_id INIT Class_Id_QAbstractProxyModel
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD dropMimeData
   METHOD index
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractProxyModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QAbstractProxyModel>
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

#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QAbstractProxyModel>
#endif
#endif


HB_FUNC_STATIC( QABSTRACTPROXYMODEL_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QAbstractProxyModel * obj = (QAbstractProxyModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual bool dropMimeData ( const QMimeData * data, Qt::DropAction action, int row, int column, const QModelIndex & parent )
*/
HB_FUNC_STATIC( QABSTRACTPROXYMODEL_DROPMIMEDATA )
{
  QAbstractProxyModel * obj = (QAbstractProxyModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QMimeData * par1 = (const QMimeData *) _qtxhb_itemGetPtr(1);
    int par2 = hb_parni(2);
    QModelIndex * par5 = (QModelIndex *) _qtxhb_itemGetPtr(5);
    hb_retl( obj->dropMimeData ( par1,  (Qt::DropAction) par2, (int) hb_parni(3), (int) hb_parni(4), *par5 ) );
  }
}


/*
virtual QModelIndex index ( int row, int column = 0, const QModelIndex & parent = QModelIndex() ) const
*/
HB_FUNC_STATIC( QABSTRACTPROXYMODEL_INDEX )
{
  QAbstractProxyModel * obj = (QAbstractProxyModel *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) _qtxhb_itemGetPtr(3);
    QModelIndex * ptr = new QModelIndex( obj->index ( (int) hb_parni(1), (int) ISNIL(2)? 0 : hb_parni(2), par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}



#pragma ENDDUMP
