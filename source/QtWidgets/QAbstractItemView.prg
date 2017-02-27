/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QMODELINDEX
REQUEST QSIZE
REQUEST QWIDGET
REQUEST QABSTRACTITEMDELEGATE
REQUEST QABSTRACTITEMMODEL
REQUEST QITEMSELECTIONMODEL
REQUEST QRECT
REQUEST QVARIANT
#endif

CLASS QAbstractItemView INHERIT QAbstractScrollArea

   DATA class_id INIT Class_Id_QAbstractItemView
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD alternatingRowColors
   METHOD setAlternatingRowColors
   METHOD autoScrollMargin
   METHOD setAutoScrollMargin
   METHOD currentIndex
   METHOD setCurrentIndex
   METHOD defaultDropAction
   METHOD setDefaultDropAction
   METHOD dragDropMode
   METHOD setDragDropMode
   METHOD dragDropOverwriteMode
   METHOD setDragDropOverwriteMode
   METHOD dragEnabled
   METHOD setDragEnabled
   METHOD editTriggers
   METHOD setEditTriggers
   METHOD hasAutoScroll
   METHOD setAutoScroll
   METHOD horizontalScrollMode
   METHOD setHorizontalScrollMode
   METHOD iconSize
   METHOD setIconSize
   METHOD indexWidget
   METHOD setIndexWidget
   METHOD closePersistentEditor
   METHOD indexAt
   METHOD itemDelegate1
   METHOD itemDelegate2
   METHOD itemDelegate
   METHOD setItemDelegate
   METHOD itemDelegateForColumn
   METHOD setItemDelegateForColumn
   METHOD itemDelegateForRow
   METHOD setItemDelegateForRow
   METHOD keyboardSearch
   METHOD model
   METHOD setModel
   METHOD openPersistentEditor
   METHOD rootIndex
   METHOD setRootIndex
   METHOD scrollTo
   METHOD selectionBehavior
   METHOD setSelectionBehavior
   METHOD selectionMode
   METHOD setSelectionMode
   METHOD selectionModel
   METHOD setSelectionModel
   METHOD showDropIndicator
   METHOD setDropIndicatorShown
   METHOD tabKeyNavigation
   METHOD setTabKeyNavigation
   METHOD textElideMode
   METHOD setTextElideMode
   METHOD verticalScrollMode
   METHOD setVerticalScrollMode
   METHOD sizeHintForColumn
   METHOD sizeHintForIndex
   METHOD sizeHintForRow
   METHOD visualRect
   METHOD inputMethodQuery
   METHOD clearSelection
   METHOD edit
   METHOD reset
   METHOD scrollToBottom
   METHOD scrollToTop
   METHOD selectAll
   METHOD update
   METHOD doItemsLayout
   METHOD onActivated
   METHOD onClicked
   METHOD onDoubleClicked
   METHOD onEntered
   METHOD onPressed
   METHOD onViewportEntered
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractItemView
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QAbstractItemView>
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QAbstractItemView>
#endif
#endif


HB_FUNC_STATIC( QABSTRACTITEMVIEW_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QAbstractItemView * obj = (QAbstractItemView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool alternatingRowColors () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_ALTERNATINGROWCOLORS )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->alternatingRowColors (  ) );
  }
}

/*
void setAlternatingRowColors ( bool enable )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETALTERNATINGROWCOLORS )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAlternatingRowColors ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int autoScrollMargin () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_AUTOSCROLLMARGIN )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->autoScrollMargin (  ) );
  }
}

/*
void setAutoScrollMargin ( int margin )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETAUTOSCROLLMARGIN )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAutoScrollMargin ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QModelIndex currentIndex () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_CURRENTINDEX )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * ptr = new QModelIndex( obj->currentIndex (  ) );
    _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}

/*
void setCurrentIndex ( const QModelIndex & index )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETCURRENTINDEX )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
    obj->setCurrentIndex ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Qt::DropAction defaultDropAction () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_DEFAULTDROPACTION )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->defaultDropAction (  ) );
  }
}

/*
void setDefaultDropAction ( Qt::DropAction dropAction )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETDEFAULTDROPACTION )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setDefaultDropAction (  (Qt::DropAction) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
DragDropMode dragDropMode () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_DRAGDROPMODE )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->dragDropMode (  ) );
  }
}

/*
void setDragDropMode ( DragDropMode behavior )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETDRAGDROPMODE )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setDragDropMode (  (QAbstractItemView::DragDropMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool dragDropOverwriteMode () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_DRAGDROPOVERWRITEMODE )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->dragDropOverwriteMode (  ) );
  }
}

/*
void setDragDropOverwriteMode ( bool overwrite )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETDRAGDROPOVERWRITEMODE )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDragDropOverwriteMode ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool dragEnabled () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_DRAGENABLED )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->dragEnabled (  ) );
  }
}

/*
void setDragEnabled ( bool enable )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETDRAGENABLED )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDragEnabled ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
EditTriggers editTriggers () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_EDITTRIGGERS )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->editTriggers (  ) );
  }
}

/*
void setEditTriggers ( EditTriggers triggers )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETEDITTRIGGERS )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setEditTriggers (  (QAbstractItemView::EditTriggers) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool hasAutoScroll () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_HASAUTOSCROLL )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->hasAutoScroll (  ) );
  }
}

/*
void setAutoScroll ( bool enable )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETAUTOSCROLL )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAutoScroll ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
ScrollMode horizontalScrollMode () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_HORIZONTALSCROLLMODE )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->horizontalScrollMode (  ) );
  }
}

/*
void setHorizontalScrollMode ( ScrollMode mode )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETHORIZONTALSCROLLMODE )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setHorizontalScrollMode (  (QAbstractItemView::ScrollMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSize iconSize () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_ICONSIZE )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->iconSize (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
void setIconSize ( const QSize & size )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETICONSIZE )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * par1 = (QSize *) _qt5xhb_itemGetPtr(1);
    obj->setIconSize ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QWidget * indexWidget ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_INDEXWIDGET )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
    QWidget * ptr = obj->indexWidget ( *par1 );
    _qt5xhb_createReturnClass ( ptr, "QWIDGET" );
  }
}

/*
void setIndexWidget ( const QModelIndex & index, QWidget * widget )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETINDEXWIDGET )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
    QWidget * par2 = (QWidget *) _qt5xhb_itemGetPtr(2);
    obj->setIndexWidget ( *par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void closePersistentEditor ( const QModelIndex & index )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_CLOSEPERSISTENTEDITOR )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
    obj->closePersistentEditor ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QModelIndex indexAt ( const QPoint & point ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_INDEXAT )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
    QModelIndex * ptr = new QModelIndex( obj->indexAt ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


/*
QAbstractItemDelegate * itemDelegate () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_ITEMDELEGATE1 )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractItemDelegate * ptr = obj->itemDelegate (  );
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTITEMDELEGATE" );
  }
}

/*
QAbstractItemDelegate * itemDelegate ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_ITEMDELEGATE2 )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
    QAbstractItemDelegate * ptr = obj->itemDelegate ( *par1 );
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTITEMDELEGATE" );
  }
}


//[1]QAbstractItemDelegate * itemDelegate () const
//[2]QAbstractItemDelegate * itemDelegate ( const QModelIndex & index ) const

HB_FUNC_STATIC( QABSTRACTITEMVIEW_ITEMDELEGATE )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QABSTRACTITEMVIEW_ITEMDELEGATE1 );
  }
  else if( ISNUMPAR(1) && ISQMODELINDEX(1) )
  {
    HB_FUNC_EXEC( QABSTRACTITEMVIEW_ITEMDELEGATE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setItemDelegate ( QAbstractItemDelegate * delegate )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETITEMDELEGATE )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractItemDelegate * par1 = (QAbstractItemDelegate *) _qt5xhb_itemGetPtr(1);
    obj->setItemDelegate ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QAbstractItemDelegate * itemDelegateForColumn ( int column ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_ITEMDELEGATEFORCOLUMN )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractItemDelegate * ptr = obj->itemDelegateForColumn ( (int) hb_parni(1) );
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTITEMDELEGATE" );
  }
}

/*
void setItemDelegateForColumn ( int column, QAbstractItemDelegate * delegate )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETITEMDELEGATEFORCOLUMN )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractItemDelegate * par2 = (QAbstractItemDelegate *) _qt5xhb_itemGetPtr(2);
    obj->setItemDelegateForColumn ( (int) hb_parni(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QAbstractItemDelegate * itemDelegateForRow ( int row ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_ITEMDELEGATEFORROW )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractItemDelegate * ptr = obj->itemDelegateForRow ( (int) hb_parni(1) );
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTITEMDELEGATE" );
  }
}

/*
void setItemDelegateForRow ( int row, QAbstractItemDelegate * delegate )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETITEMDELEGATEFORROW )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractItemDelegate * par2 = (QAbstractItemDelegate *) _qt5xhb_itemGetPtr(2);
    obj->setItemDelegateForRow ( (int) hb_parni(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void keyboardSearch ( const QString & search )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_KEYBOARDSEARCH )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->keyboardSearch ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QAbstractItemModel * model () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_MODEL )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractItemModel * ptr = obj->model (  );
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTITEMMODEL" );
  }
}

/*
virtual void setModel ( QAbstractItemModel * model )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETMODEL )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractItemModel * par1 = (QAbstractItemModel *) _qt5xhb_itemGetPtr(1);
    obj->setModel ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void openPersistentEditor ( const QModelIndex & index )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_OPENPERSISTENTEDITOR )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
    obj->openPersistentEditor ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QModelIndex rootIndex () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_ROOTINDEX )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * ptr = new QModelIndex( obj->rootIndex (  ) );
    _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}

/*
virtual void setRootIndex ( const QModelIndex & index )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETROOTINDEX )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
    obj->setRootIndex ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void scrollTo ( const QModelIndex & index, ScrollHint hint = EnsureVisible ) = 0
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SCROLLTO )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
    int par2 = ISNIL(2)? (int) QAbstractItemView::EnsureVisible : hb_parni(2);
    obj->scrollTo ( *par1,  (QAbstractItemView::ScrollHint) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QAbstractItemView::SelectionBehavior selectionBehavior () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SELECTIONBEHAVIOR )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->selectionBehavior (  ) );
  }
}

/*
void setSelectionBehavior ( QAbstractItemView::SelectionBehavior behavior )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETSELECTIONBEHAVIOR )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setSelectionBehavior (  (QAbstractItemView::SelectionBehavior) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QAbstractItemView::SelectionMode selectionMode () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SELECTIONMODE )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->selectionMode (  ) );
  }
}

/*
void setSelectionMode ( QAbstractItemView::SelectionMode mode )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETSELECTIONMODE )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setSelectionMode (  (QAbstractItemView::SelectionMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QItemSelectionModel * selectionModel () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SELECTIONMODEL )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QItemSelectionModel * ptr = obj->selectionModel (  );
    _qt5xhb_createReturnClass ( ptr, "QITEMSELECTIONMODEL" );
  }
}

/*
virtual void setSelectionModel ( QItemSelectionModel * selectionModel )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETSELECTIONMODEL )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QItemSelectionModel * par1 = (QItemSelectionModel *) _qt5xhb_itemGetPtr(1);
    obj->setSelectionModel ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool showDropIndicator () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SHOWDROPINDICATOR )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->showDropIndicator (  ) );
  }
}

/*
void setDropIndicatorShown ( bool enable )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETDROPINDICATORSHOWN )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDropIndicatorShown ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool tabKeyNavigation () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_TABKEYNAVIGATION )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->tabKeyNavigation (  ) );
  }
}

/*
void setTabKeyNavigation ( bool enable )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETTABKEYNAVIGATION )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTabKeyNavigation ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Qt::TextElideMode textElideMode () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_TEXTELIDEMODE )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->textElideMode (  ) );
  }
}

/*
void setTextElideMode ( Qt::TextElideMode mode )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETTEXTELIDEMODE )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setTextElideMode (  (Qt::TextElideMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
ScrollMode verticalScrollMode () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_VERTICALSCROLLMODE )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->verticalScrollMode (  ) );
  }
}

/*
void setVerticalScrollMode ( ScrollMode mode )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SETVERTICALSCROLLMODE )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setVerticalScrollMode (  (QAbstractItemView::ScrollMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual int sizeHintForColumn ( int column ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SIZEHINTFORCOLUMN )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->sizeHintForColumn ( (int) hb_parni(1) ) );
  }
}


/*
QSize sizeHintForIndex ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SIZEHINTFORINDEX )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
    QSize * ptr = new QSize( obj->sizeHintForIndex ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual int sizeHintForRow ( int row ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SIZEHINTFORROW )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->sizeHintForRow ( (int) hb_parni(1) ) );
  }
}



/*
virtual QRect visualRect ( const QModelIndex & index ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_VISUALRECT )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
    QRect * ptr = new QRect( obj->visualRect ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
virtual QVariant inputMethodQuery ( Qt::InputMethodQuery query ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_INPUTMETHODQUERY )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant * ptr = new QVariant( obj->inputMethodQuery (  (Qt::InputMethodQuery) par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
void clearSelection ()
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_CLEARSELECTION )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clearSelection (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void edit ( const QModelIndex & index )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_EDIT )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
    obj->edit ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void reset ()
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_RESET )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->reset (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void scrollToBottom ()
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SCROLLTOBOTTOM )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->scrollToBottom (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void scrollToTop ()
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SCROLLTOTOP )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->scrollToTop (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void selectAll ()
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SELECTALL )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->selectAll (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void update ( const QModelIndex & index )
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_UPDATE )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
    obj->update ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void doItemsLayout()
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_DOITEMSLAYOUT )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->doItemsLayout (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
