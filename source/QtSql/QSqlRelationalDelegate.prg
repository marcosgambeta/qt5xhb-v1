/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWIDGET
#endif

CLASS QSqlRelationalDelegate INHERIT QItemDelegate

   DATA class_id INIT Class_Id_QSqlRelationalDelegate
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD createEditor
   METHOD setModelData
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSqlRelationalDelegate
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QSqlRelationalDelegate>
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
#include <QSqlRelationalDelegate>
#endif

/*
explicit QSqlRelationalDelegate(QObject *aParent = 0)
*/
HB_FUNC_STATIC( QSQLRELATIONALDELEGATE_NEW )
{
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QSqlRelationalDelegate * o = new QSqlRelationalDelegate ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSqlRelationalDelegate *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QSQLRELATIONALDELEGATE_DELETE )
{
  QSqlRelationalDelegate * obj = (QSqlRelationalDelegate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
}

/*
QWidget *createEditor(QWidget *aParent, const QStyleOptionViewItem &option, const QModelIndex &index) const
*/
HB_FUNC_STATIC( QSQLRELATIONALDELEGATE_CREATEEDITOR )
{
  QSqlRelationalDelegate * obj = (QSqlRelationalDelegate *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
    QStyleOptionViewItem * par2 = (QStyleOptionViewItem *) _qt5xhb_itemGetPtr(2);
    QModelIndex * par3 = (QModelIndex *) _qt5xhb_itemGetPtr(3);
    QWidget * ptr = obj->createEditor ( par1, *par2, *par3 );
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}


/*
void setModelData(QWidget *editor, QAbstractItemModel *model, const QModelIndex &index) const
*/
HB_FUNC_STATIC( QSQLRELATIONALDELEGATE_SETMODELDATA )
{
  QSqlRelationalDelegate * obj = (QSqlRelationalDelegate *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
    QAbstractItemModel * par2 = (QAbstractItemModel *) _qt5xhb_itemGetPtr(2);
    QModelIndex * par3 = (QModelIndex *) _qt5xhb_itemGetPtr(3);
    obj->setModelData ( par1, par2, *par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
