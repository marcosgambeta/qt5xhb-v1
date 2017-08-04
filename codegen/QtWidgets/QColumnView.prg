$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QMODELINDEX
REQUEST QSIZE
REQUEST QRECT
#endif

CLASS QColumnView INHERIT QAbstractItemView

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

$destructor

#pragma BEGINDUMP

$includes

/*
QColumnView ( QWidget * parent = 0 )
*/
$constructor=|new|QWidget *=0

$deleteMethod

/*
QList<int> columnWidths () const
*/
HB_FUNC_STATIC( QCOLUMNVIEW_COLUMNWIDTHS )
{
  QColumnView * obj = (QColumnView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<int> list = obj->columnWidths ();
    _qt5xhb_convert_qlist_int_to_array ( list );
  }
}

/*
QWidget * previewWidget () const
*/
$method=|QWidget *|previewWidget|

/*
bool resizeGripsVisible () const
*/
$method=|bool|resizeGripsVisible|

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
$method=|void|setPreviewWidget|QWidget *

/*
void setResizeGripsVisible ( bool visible )
*/
$method=|void|setResizeGripsVisible|bool

/*
virtual QModelIndex indexAt ( const QPoint & point ) const
*/
$method=|QModelIndex|indexAt|const QPoint &

/*
virtual void scrollTo ( const QModelIndex & index, ScrollHint hint = EnsureVisible )
*/
$method=|void|scrollTo|const QModelIndex &,QColumnView::ScrollHint=QColumnView::EnsureVisible

/*
virtual void selectAll ()
*/
$method=|void|selectAll|

/*
virtual void setModel ( QAbstractItemModel * model )
*/
$method=|void|setModel|QAbstractItemModel *

/*
virtual void setRootIndex ( const QModelIndex & index )
*/
$method=|void|setRootIndex|const QModelIndex &

/*
virtual void setSelectionModel ( QItemSelectionModel * newSelectionModel )
*/
$method=|void|setSelectionModel|QItemSelectionModel *

/*
virtual QSize sizeHint () const
*/
$method=|QSize|sizeHint|

/*
virtual QRect visualRect ( const QModelIndex & index ) const
*/
$method=|QRect|visualRect|const QModelIndex &

#pragma ENDDUMP
