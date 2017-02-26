/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QWIDGET
REQUEST QITEMEDITORFACTORY
#endif

CLASS QStyledItemDelegate INHERIT QAbstractItemDelegate

   DATA class_id INIT Class_Id_QStyledItemDelegate
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD paint
   METHOD sizeHint
   METHOD createEditor
   METHOD setEditorData
   METHOD setModelData
   METHOD updateEditorGeometry
   METHOD itemEditorFactory
   METHOD setItemEditorFactory
   METHOD displayText
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QStyledItemDelegate
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QStyledItemDelegate>
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
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QStyledItemDelegate>
#endif
#endif

/*
QStyledItemDelegate(QObject *parent = 0)
*/
HB_FUNC_STATIC( QSTYLEDITEMDELEGATE_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qtxhb_itemGetPtr(1);
  QStyledItemDelegate * o = new QStyledItemDelegate ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QStyledItemDelegate *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QSTYLEDITEMDELEGATE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QStyledItemDelegate * obj = (QStyledItemDelegate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void paint(QPainter *painter,const QStyleOptionViewItem &option, const QModelIndex &index) const
*/
HB_FUNC_STATIC( QSTYLEDITEMDELEGATE_PAINT )
{
  QStyledItemDelegate * obj = (QStyledItemDelegate *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPainter * par1 = (QPainter *) _qtxhb_itemGetPtr(1);
    QStyleOptionViewItem * par2 = (QStyleOptionViewItem *) _qtxhb_itemGetPtr(2);
    QModelIndex * par3 = (QModelIndex *) _qtxhb_itemGetPtr(3);
    obj->paint ( par1, *par2, *par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSize sizeHint(const QStyleOptionViewItem &option,const QModelIndex &index) const
*/
HB_FUNC_STATIC( QSTYLEDITEMDELEGATE_SIZEHINT )
{
  QStyledItemDelegate * obj = (QStyledItemDelegate *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStyleOptionViewItem * par1 = (QStyleOptionViewItem *) _qtxhb_itemGetPtr(1);
    QModelIndex * par2 = (QModelIndex *) _qtxhb_itemGetPtr(2);
    QSize * ptr = new QSize( obj->sizeHint ( *par1, *par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
QWidget *createEditor(QWidget *parent,const QStyleOptionViewItem &option,const QModelIndex &index) const
*/
HB_FUNC_STATIC( QSTYLEDITEMDELEGATE_CREATEEDITOR )
{
  QStyledItemDelegate * obj = (QStyledItemDelegate *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qtxhb_itemGetPtr(1);
    QStyleOptionViewItem * par2 = (QStyleOptionViewItem *) _qtxhb_itemGetPtr(2);
    QModelIndex * par3 = (QModelIndex *) _qtxhb_itemGetPtr(3);
    QWidget * ptr = obj->createEditor ( par1, *par2, *par3 );
    _qt4xhb_createReturnClass ( ptr, "QWIDGET" );
  }
}


/*
void setEditorData(QWidget *editor, const QModelIndex &index) const
*/
HB_FUNC_STATIC( QSTYLEDITEMDELEGATE_SETEDITORDATA )
{
  QStyledItemDelegate * obj = (QStyledItemDelegate *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qtxhb_itemGetPtr(1);
    QModelIndex * par2 = (QModelIndex *) _qtxhb_itemGetPtr(2);
    obj->setEditorData ( par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setModelData(QWidget *editor,QAbstractItemModel *model,const QModelIndex &index) const
*/
HB_FUNC_STATIC( QSTYLEDITEMDELEGATE_SETMODELDATA )
{
  QStyledItemDelegate * obj = (QStyledItemDelegate *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qtxhb_itemGetPtr(1);
    QAbstractItemModel * par2 = (QAbstractItemModel *) _qtxhb_itemGetPtr(2);
    QModelIndex * par3 = (QModelIndex *) _qtxhb_itemGetPtr(3);
    obj->setModelData ( par1, par2, *par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void updateEditorGeometry(QWidget *editor,const QStyleOptionViewItem &option,const QModelIndex &index) const
*/
HB_FUNC_STATIC( QSTYLEDITEMDELEGATE_UPDATEEDITORGEOMETRY )
{
  QStyledItemDelegate * obj = (QStyledItemDelegate *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qtxhb_itemGetPtr(1);
    QStyleOptionViewItem * par2 = (QStyleOptionViewItem *) _qtxhb_itemGetPtr(2);
    QModelIndex * par3 = (QModelIndex *) _qtxhb_itemGetPtr(3);
    obj->updateEditorGeometry ( par1, *par2, *par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QItemEditorFactory *itemEditorFactory() const
*/
HB_FUNC_STATIC( QSTYLEDITEMDELEGATE_ITEMEDITORFACTORY )
{
  QStyledItemDelegate * obj = (QStyledItemDelegate *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QItemEditorFactory * ptr = obj->itemEditorFactory (  );
    _qt4xhb_createReturnClass ( ptr, "QITEMEDITORFACTORY" );
  }
}


/*
void setItemEditorFactory(QItemEditorFactory *factory)
*/
HB_FUNC_STATIC( QSTYLEDITEMDELEGATE_SETITEMEDITORFACTORY )
{
  QStyledItemDelegate * obj = (QStyledItemDelegate *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QItemEditorFactory * par1 = (QItemEditorFactory *) _qtxhb_itemGetPtr(1);
    obj->setItemEditorFactory ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QString displayText(const QVariant &value, const QLocale &locale) const
*/
HB_FUNC_STATIC( QSTYLEDITEMDELEGATE_DISPLAYTEXT )
{
  QStyledItemDelegate * obj = (QStyledItemDelegate *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * par1 = (QVariant *) _qtxhb_itemGetPtr(1);
    QLocale * par2 = (QLocale *) _qtxhb_itemGetPtr(2);
    hb_retc( (const char *) obj->displayText ( *par1, *par2 ).toLatin1().data() );
  }
}



#pragma ENDDUMP
