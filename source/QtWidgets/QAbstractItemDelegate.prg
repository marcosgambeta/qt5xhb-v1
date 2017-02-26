/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QSIZE
#endif

CLASS QAbstractItemDelegate INHERIT QObject

   DATA class_id INIT Class_Id_QAbstractItemDelegate
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD createEditor
   METHOD editorEvent
   METHOD paint
   METHOD setEditorData
   METHOD setModelData
   METHOD sizeHint
   METHOD updateEditorGeometry
   METHOD helpEvent
   METHOD destroyEditor
   METHOD elidedText
   METHOD paintingRoles
   METHOD onCloseEditor
   METHOD onCommitData
   METHOD onSizeHintChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractItemDelegate
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QAbstractItemDelegate>
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
#include <QAbstractItemDelegate>
#endif
#endif


HB_FUNC_STATIC( QABSTRACTITEMDELEGATE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QAbstractItemDelegate * obj = (QAbstractItemDelegate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QWidget * createEditor ( QWidget * parent, const QStyleOptionViewItem & option, const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMDELEGATE_CREATEEDITOR )
{
  QAbstractItemDelegate * obj = (QAbstractItemDelegate *) _qtxhb_itemGetPtrStackSelfItem();
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
virtual bool editorEvent ( QEvent * event, QAbstractItemModel * model, const QStyleOptionViewItem & option, const QModelIndex & index )
*/
HB_FUNC_STATIC( QABSTRACTITEMDELEGATE_EDITOREVENT )
{
  QAbstractItemDelegate * obj = (QAbstractItemDelegate *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QEvent * par1 = (QEvent *) _qtxhb_itemGetPtr(1);
    QAbstractItemModel * par2 = (QAbstractItemModel *) _qtxhb_itemGetPtr(2);
    QStyleOptionViewItem * par3 = (QStyleOptionViewItem *) _qtxhb_itemGetPtr(3);
    QModelIndex * par4 = (QModelIndex *) _qtxhb_itemGetPtr(4);
    hb_retl( obj->editorEvent ( par1, par2, *par3, *par4 ) );
  }
}


/*
virtual void paint ( QPainter * painter, const QStyleOptionViewItem & option, const QModelIndex & index ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTITEMDELEGATE_PAINT )
{
  QAbstractItemDelegate * obj = (QAbstractItemDelegate *) _qtxhb_itemGetPtrStackSelfItem();
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
virtual void setEditorData ( QWidget * editor, const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMDELEGATE_SETEDITORDATA )
{
  QAbstractItemDelegate * obj = (QAbstractItemDelegate *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qtxhb_itemGetPtr(1);
    QModelIndex * par2 = (QModelIndex *) _qtxhb_itemGetPtr(2);
    obj->setEditorData ( par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setModelData ( QWidget * editor, QAbstractItemModel * model, const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMDELEGATE_SETMODELDATA )
{
  QAbstractItemDelegate * obj = (QAbstractItemDelegate *) _qtxhb_itemGetPtrStackSelfItem();
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
virtual QSize sizeHint ( const QStyleOptionViewItem & option, const QModelIndex & index ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTITEMDELEGATE_SIZEHINT )
{
  QAbstractItemDelegate * obj = (QAbstractItemDelegate *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStyleOptionViewItem * par1 = (QStyleOptionViewItem *) _qtxhb_itemGetPtr(1);
    QModelIndex * par2 = (QModelIndex *) _qtxhb_itemGetPtr(2);
    QSize * ptr = new QSize( obj->sizeHint ( *par1, *par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual void updateEditorGeometry ( QWidget * editor, const QStyleOptionViewItem & option, const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMDELEGATE_UPDATEEDITORGEOMETRY )
{
  QAbstractItemDelegate * obj = (QAbstractItemDelegate *) _qtxhb_itemGetPtrStackSelfItem();
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
virtual bool helpEvent ( QHelpEvent * event, QAbstractItemView * view, const QStyleOptionViewItem & option, const QModelIndex & index )
*/
HB_FUNC_STATIC( QABSTRACTITEMDELEGATE_HELPEVENT )
{
  QAbstractItemDelegate * obj = (QAbstractItemDelegate *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QHelpEvent * par1 = (QHelpEvent *) _qtxhb_itemGetPtr(1);
    QAbstractItemView * par2 = (QAbstractItemView *) _qtxhb_itemGetPtr(2);
    QStyleOptionViewItem * par3 = (QStyleOptionViewItem *) _qtxhb_itemGetPtr(3);
    QModelIndex * par4 = (QModelIndex *) _qtxhb_itemGetPtr(4);
    hb_retl( obj->helpEvent ( par1, par2, *par3, *par4 ) );
  }
}


/*
virtual void destroyEditor(QWidget *editor, const QModelIndex &index) const
*/
HB_FUNC_STATIC( QABSTRACTITEMDELEGATE_DESTROYEDITOR )
{
  QAbstractItemDelegate * obj = (QAbstractItemDelegate *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qtxhb_itemGetPtr(1);
    QModelIndex * par2 = (QModelIndex *) _qtxhb_itemGetPtr(2);
    obj->destroyEditor ( par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static QString elidedText(const QFontMetrics &fontMetrics, int width, Qt::TextElideMode mode, const QString &text)
*/
HB_FUNC_STATIC( QABSTRACTITEMDELEGATE_ELIDEDTEXT )
{
  QFontMetrics * par1 = (QFontMetrics *) _qtxhb_itemGetPtr(1);
  int par3 = hb_parni(3);
  QString par4 = QLatin1String( hb_parc(4) );
  hb_retc( (const char *) QAbstractItemDelegate::elidedText ( *par1, (int) hb_parni(2),  (Qt::TextElideMode) par3, par4 ).toLatin1().data() );
}


/*
virtual QVector<int> paintingRoles() const
*/
HB_FUNC_STATIC( QABSTRACTITEMDELEGATE_PAINTINGROLES )
{
  QAbstractItemDelegate * obj = (QAbstractItemDelegate *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVector<int> list = obj->paintingRoles (  );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutNI( NULL, list[i] );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}




#pragma ENDDUMP
