/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QMODELINDEX
REQUEST QSIZE
REQUEST QRECT
#endif

CLASS QColumnView INHERIT QAbstractItemView

   DATA class_id INIT Class_Id_QColumnView
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD columnWidths
   METHOD previewWidget
   METHOD resizeGripsVisible
   METHOD setColumnWidths
   METHOD setPreviewWidget
   METHOD setResizeGripsVisible
   METHOD indexAt
   METHOD scrollTo
   METHOD selectAll
   METHOD setModel
   METHOD setRootIndex
   METHOD setSelectionModel
   METHOD sizeHint
   METHOD visualRect
   METHOD onUpdatePreviewWidget
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QColumnView
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QColumnView>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QColumnView>
#endif

/*
QColumnView ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QCOLUMNVIEW_NEW )
{
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qt5xhb_itemGetPtr(1);
  QColumnView * o = new QColumnView ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QCOLUMNVIEW_DELETE )
{
  QColumnView * obj = (QColumnView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QList<int> columnWidths () const
*/
HB_FUNC_STATIC( QCOLUMNVIEW_COLUMNWIDTHS )
{
  QColumnView * obj = (QColumnView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<int> list = obj->columnWidths (  );
    _qt5xhb_convert_qlist_int_to_array ( list );
  }
}


/*
QWidget * previewWidget () const
*/
HB_FUNC_STATIC( QCOLUMNVIEW_PREVIEWWIDGET )
{
  QColumnView * obj = (QColumnView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * ptr = obj->previewWidget (  );
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}


/*
bool resizeGripsVisible () const
*/
HB_FUNC_STATIC( QCOLUMNVIEW_RESIZEGRIPSVISIBLE )
{
  QColumnView * obj = (QColumnView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->resizeGripsVisible (  ) );
  }
}


/*
void setColumnWidths ( const QList<int> & list )
*/
HB_FUNC_STATIC( QCOLUMNVIEW_SETCOLUMNWIDTHS )
{
  QColumnView * obj = (QColumnView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<int> par1;
    PHB_ITEM aValues1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aValues1);
    int temp1;
    for (i1=0;i1<nLen1;i1++)
    {
      temp1 = hb_arrayGetNI(aValues1, i1+1);
      par1 << temp1;
    }
    obj->setColumnWidths ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPreviewWidget ( QWidget * widget )
*/
HB_FUNC_STATIC( QCOLUMNVIEW_SETPREVIEWWIDGET )
{
  QColumnView * obj = (QColumnView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
    obj->setPreviewWidget ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setResizeGripsVisible ( bool visible )
*/
HB_FUNC_STATIC( QCOLUMNVIEW_SETRESIZEGRIPSVISIBLE )
{
  QColumnView * obj = (QColumnView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setResizeGripsVisible ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QModelIndex indexAt ( const QPoint & point ) const
*/
HB_FUNC_STATIC( QCOLUMNVIEW_INDEXAT )
{
  QColumnView * obj = (QColumnView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
    QModelIndex * ptr = new QModelIndex( obj->indexAt ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


/*
virtual void scrollTo ( const QModelIndex & index, ScrollHint hint = EnsureVisible )
*/
HB_FUNC_STATIC( QCOLUMNVIEW_SCROLLTO )
{
  QColumnView * obj = (QColumnView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
    int par2 = ISNIL(2)? (int) QColumnView::EnsureVisible : hb_parni(2);
    obj->scrollTo ( *par1,  (QColumnView::ScrollHint) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void selectAll ()
*/
HB_FUNC_STATIC( QCOLUMNVIEW_SELECTALL )
{
  QColumnView * obj = (QColumnView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->selectAll (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setModel ( QAbstractItemModel * model )
*/
HB_FUNC_STATIC( QCOLUMNVIEW_SETMODEL )
{
  QColumnView * obj = (QColumnView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractItemModel * par1 = (QAbstractItemModel *) _qt5xhb_itemGetPtr(1);
    obj->setModel ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setRootIndex ( const QModelIndex & index )
*/
HB_FUNC_STATIC( QCOLUMNVIEW_SETROOTINDEX )
{
  QColumnView * obj = (QColumnView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
    obj->setRootIndex ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setSelectionModel ( QItemSelectionModel * newSelectionModel )
*/
HB_FUNC_STATIC( QCOLUMNVIEW_SETSELECTIONMODEL )
{
  QColumnView * obj = (QColumnView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QItemSelectionModel * par1 = (QItemSelectionModel *) _qt5xhb_itemGetPtr(1);
    obj->setSelectionModel ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QCOLUMNVIEW_SIZEHINT )
{
  QColumnView * obj = (QColumnView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual QRect visualRect ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QCOLUMNVIEW_VISUALRECT )
{
  QColumnView * obj = (QColumnView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
    QRect * ptr = new QRect( obj->visualRect ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}




#pragma ENDDUMP
