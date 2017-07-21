$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
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

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
bool alternatingRowColors () const
*/
$method=|bool|alternatingRowColors|

/*
void setAlternatingRowColors ( bool enable )
*/
$method=|void|setAlternatingRowColors|bool

/*
int autoScrollMargin () const
*/
$method=|int|autoScrollMargin|

/*
void setAutoScrollMargin ( int margin )
*/
$method=|void|setAutoScrollMargin|int

/*
QModelIndex currentIndex () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_CURRENTINDEX )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * ptr = new QModelIndex( obj->currentIndex () );
    _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}

/*
void setCurrentIndex ( const QModelIndex & index )
*/
$method=|void|setCurrentIndex|const QModelIndex &

/*
Qt::DropAction defaultDropAction () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_DEFAULTDROPACTION )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->defaultDropAction () );
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
    obj->setDefaultDropAction ( (Qt::DropAction) hb_parni(1) );
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
    hb_retni( obj->dragDropMode () );
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
    obj->setDragDropMode ( (QAbstractItemView::DragDropMode) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool dragDropOverwriteMode () const
*/
$method=|bool|dragDropOverwriteMode|

/*
void setDragDropOverwriteMode ( bool overwrite )
*/
$method=|void|setDragDropOverwriteMode|bool

/*
bool dragEnabled () const
*/
$method=|bool|dragEnabled|

/*
void setDragEnabled ( bool enable )
*/
$method=|void|setDragEnabled|bool

/*
EditTriggers editTriggers () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_EDITTRIGGERS )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->editTriggers () );
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
    obj->setEditTriggers ( (QAbstractItemView::EditTriggers) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool hasAutoScroll () const
*/
$method=|bool|hasAutoScroll|

/*
void setAutoScroll ( bool enable )
*/
$method=|void|setAutoScroll|bool

/*
ScrollMode horizontalScrollMode () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_HORIZONTALSCROLLMODE )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->horizontalScrollMode () );
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
    obj->setHorizontalScrollMode ( (QAbstractItemView::ScrollMode) hb_parni(1) );
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
    QSize * ptr = new QSize( obj->iconSize () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
void setIconSize ( const QSize & size )
*/
$method=|void|setIconSize|const QSize &

/*
QWidget * indexWidget ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_INDEXWIDGET )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * ptr = obj->indexWidget ( *PQMODELINDEX(1) );
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
void setIndexWidget ( const QModelIndex & index, QWidget * widget )
*/
$method=|void|setIndexWidget|const QModelIndex &,QWidget *

/*
void closePersistentEditor ( const QModelIndex & index )
*/
$method=|void|closePersistentEditor|const QModelIndex &

/*
virtual QModelIndex indexAt ( const QPoint & point ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_INDEXAT )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * ptr = new QModelIndex( obj->indexAt ( *PQPOINT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}

/*
QAbstractItemDelegate * itemDelegate () const
*/
void QAbstractItemView_itemDelegate1 ()
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractItemDelegate * ptr = obj->itemDelegate ();
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTITEMDELEGATE" );
  }
}

/*
QAbstractItemDelegate * itemDelegate ( const QModelIndex & index ) const
*/
void QAbstractItemView_itemDelegate2 ()
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractItemDelegate * ptr = obj->itemDelegate ( *PQMODELINDEX(1) );
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTITEMDELEGATE" );
  }
}

//[1]QAbstractItemDelegate * itemDelegate () const
//[2]QAbstractItemDelegate * itemDelegate ( const QModelIndex & index ) const

HB_FUNC_STATIC( QABSTRACTITEMVIEW_ITEMDELEGATE )
{
  if( ISNUMPAR(0) )
  {
    QAbstractItemView_itemDelegate1();
  }
  else if( ISNUMPAR(1) && ISQMODELINDEX(1) )
  {
    QAbstractItemView_itemDelegate2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setItemDelegate ( QAbstractItemDelegate * delegate )
*/
$method=|void|setItemDelegate|QAbstractItemDelegate *

/*
QAbstractItemDelegate * itemDelegateForColumn ( int column ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_ITEMDELEGATEFORCOLUMN )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QAbstractItemDelegate * ptr = obj->itemDelegateForColumn ( PINT(1) );
      _qt5xhb_createReturnClass ( ptr, "QABSTRACTITEMDELEGATE" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setItemDelegateForColumn ( int column, QAbstractItemDelegate * delegate )
*/
$method=|void|setItemDelegateForColumn|int,QAbstractItemDelegate *

/*
QAbstractItemDelegate * itemDelegateForRow ( int row ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_ITEMDELEGATEFORROW )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QAbstractItemDelegate * ptr = obj->itemDelegateForRow ( PINT(1) );
      _qt5xhb_createReturnClass ( ptr, "QABSTRACTITEMDELEGATE" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setItemDelegateForRow ( int row, QAbstractItemDelegate * delegate )
*/
$method=|void|setItemDelegateForRow|int,QAbstractItemDelegate *

/*
virtual void keyboardSearch ( const QString & search )
*/
$method=|void|keyboardSearch|const QString &

/*
QAbstractItemModel * model () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_MODEL )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractItemModel * ptr = obj->model ();
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTITEMMODEL" );
  }
}

/*
virtual void setModel ( QAbstractItemModel * model )
*/
$method=|void|setModel|QAbstractItemModel *

/*
void openPersistentEditor ( const QModelIndex & index )
*/
$method=|void|openPersistentEditor|const QModelIndex &

/*
QModelIndex rootIndex () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_ROOTINDEX )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * ptr = new QModelIndex( obj->rootIndex () );
    _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}

/*
virtual void setRootIndex ( const QModelIndex & index )
*/
$method=|void|setRootIndex|const QModelIndex &

/*
virtual void scrollTo ( const QModelIndex & index, ScrollHint hint = EnsureVisible ) = 0
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SCROLLTO )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = ISNIL(2)? (int) QAbstractItemView::EnsureVisible : hb_parni(2);
    obj->scrollTo ( *PQMODELINDEX(1), (QAbstractItemView::ScrollHint) par2 );
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
    hb_retni( obj->selectionBehavior () );
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
    obj->setSelectionBehavior ( (QAbstractItemView::SelectionBehavior) hb_parni(1) );
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
    hb_retni( obj->selectionMode () );
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
    obj->setSelectionMode ( (QAbstractItemView::SelectionMode) hb_parni(1) );
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
    QItemSelectionModel * ptr = obj->selectionModel ();
    _qt5xhb_createReturnClass ( ptr, "QITEMSELECTIONMODEL" );
  }
}

/*
virtual void setSelectionModel ( QItemSelectionModel * selectionModel )
*/
$method=|void|setSelectionModel|QItemSelectionModel *

/*
bool showDropIndicator () const
*/
$method=|bool|showDropIndicator|

/*
void setDropIndicatorShown ( bool enable )
*/
$method=|void|setDropIndicatorShown|bool

/*
bool tabKeyNavigation () const
*/
$method=|bool|tabKeyNavigation|

/*
void setTabKeyNavigation ( bool enable )
*/
$method=|void|setTabKeyNavigation|bool

/*
Qt::TextElideMode textElideMode () const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_TEXTELIDEMODE )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->textElideMode () );
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
    obj->setTextElideMode ( (Qt::TextElideMode) hb_parni(1) );
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
    hb_retni( obj->verticalScrollMode () );
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
    obj->setVerticalScrollMode ( (QAbstractItemView::ScrollMode) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual int sizeHintForColumn ( int column ) const
*/
$method=|int|sizeHintForColumn|int

/*
QSize sizeHintForIndex ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_SIZEHINTFORINDEX )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHintForIndex ( *PQMODELINDEX(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
virtual int sizeHintForRow ( int row ) const
*/
$method=|int|sizeHintForRow|int

/*
virtual QRect visualRect ( const QModelIndex & index ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTITEMVIEW_VISUALRECT )
{
  QAbstractItemView * obj = (QAbstractItemView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->visualRect ( *PQMODELINDEX(1) ) );
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
    QVariant * ptr = new QVariant( obj->inputMethodQuery ( (Qt::InputMethodQuery) hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

/*
void clearSelection ()
*/
$method=|void|clearSelection|

/*
void edit ( const QModelIndex & index )
*/
$method=|void|edit|const QModelIndex &

/*
virtual void reset ()
*/
$method=|void|reset|

/*
void scrollToBottom ()
*/
$method=|void|scrollToBottom|

/*
void scrollToTop ()
*/
$method=|void|scrollToTop|

/*
virtual void selectAll ()
*/
$method=|void|selectAll|

/*
void update ( const QModelIndex & index )
*/
$method=|void|update|const QModelIndex &

/*
virtual void doItemsLayout()
*/
$method=|void|doItemsLayout|

#pragma ENDDUMP
