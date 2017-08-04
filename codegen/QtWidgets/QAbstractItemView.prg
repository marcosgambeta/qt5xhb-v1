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
$method=|QModelIndex|currentIndex|

/*
void setCurrentIndex ( const QModelIndex & index )
*/
$method=|void|setCurrentIndex|const QModelIndex &

/*
Qt::DropAction defaultDropAction () const
*/
$method=|Qt::DropAction|defaultDropAction|

/*
void setDefaultDropAction ( Qt::DropAction dropAction )
*/
$method=|void|setDefaultDropAction|Qt::DropAction

/*
DragDropMode dragDropMode () const
*/
$method=|QAbstractItemView::DragDropMode|dragDropMode|

/*
void setDragDropMode ( DragDropMode behavior )
*/
$method=|void|setDragDropMode|QAbstractItemView::DragDropMode

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
$method=|QAbstractItemView::EditTriggers|editTriggers|

/*
void setEditTriggers ( EditTriggers triggers )
*/
$method=|void|setEditTriggers|QAbstractItemView::EditTriggers

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
$method=|QAbstractItemView::ScrollMode|horizontalScrollMode|

/*
void setHorizontalScrollMode ( ScrollMode mode )
*/
$method=|void|setHorizontalScrollMode|QAbstractItemView::ScrollMode

/*
QSize iconSize () const
*/
$method=|QSize|iconSize|

/*
void setIconSize ( const QSize & size )
*/
$method=|void|setIconSize|const QSize &

/*
QWidget * indexWidget ( const QModelIndex & index ) const
*/
$method=|QWidget *|indexWidget|const QModelIndex &

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
$method=|QModelIndex|indexAt|const QPoint &

/*
QAbstractItemDelegate * itemDelegate () const
*/
$internalMethod=|QAbstractItemDelegate *|itemDelegate,itemDelegate1|

/*
QAbstractItemDelegate * itemDelegate ( const QModelIndex & index ) const
*/
$internalMethod=|QAbstractItemDelegate *|itemDelegate,itemDelegate2|const QModelIndex &

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
$method=|QAbstractItemDelegate *|itemDelegateForColumn|int

/*
void setItemDelegateForColumn ( int column, QAbstractItemDelegate * delegate )
*/
$method=|void|setItemDelegateForColumn|int,QAbstractItemDelegate *

/*
QAbstractItemDelegate * itemDelegateForRow ( int row ) const
*/
$method=|QAbstractItemDelegate *|itemDelegateForRow|int

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
$method=|QAbstractItemModel *|model|

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
$method=|QModelIndex|rootIndex|

/*
virtual void setRootIndex ( const QModelIndex & index )
*/
$method=|void|setRootIndex|const QModelIndex &

/*
virtual void scrollTo ( const QModelIndex & index, ScrollHint hint = EnsureVisible ) = 0
*/
$method=|void|scrollTo|const QModelIndex &,QAbstractItemView::ScrollHint=QAbstractItemView::EnsureVisible

/*
QAbstractItemView::SelectionBehavior selectionBehavior () const
*/
$method=|QAbstractItemView::SelectionBehavior|selectionBehavior|

/*
void setSelectionBehavior ( QAbstractItemView::SelectionBehavior behavior )
*/
$method=|void|setSelectionBehavior|QAbstractItemView::SelectionBehavior

/*
QAbstractItemView::SelectionMode selectionMode () const
*/
$method=|QAbstractItemView::SelectionMode|selectionMode|

/*
void setSelectionMode ( QAbstractItemView::SelectionMode mode )
*/
$method=|void|setSelectionMode|QAbstractItemView::SelectionMode

/*
QItemSelectionModel * selectionModel () const
*/
$method=|QItemSelectionModel *|selectionModel|

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
$method=|Qt::TextElideMode|textElideMode|

/*
void setTextElideMode ( Qt::TextElideMode mode )
*/
$method=|void|setTextElideMode|Qt::TextElideMode

/*
ScrollMode verticalScrollMode () const
*/
$method=|QAbstractItemView::ScrollMode|verticalScrollMode|

/*
void setVerticalScrollMode ( ScrollMode mode )
*/
$method=|void|setVerticalScrollMode|QAbstractItemView::ScrollMode

/*
virtual int sizeHintForColumn ( int column ) const
*/
$method=|int|sizeHintForColumn|int

/*
QSize sizeHintForIndex ( const QModelIndex & index ) const
*/
$method=|QSize|sizeHintForIndex|const QModelIndex &

/*
virtual int sizeHintForRow ( int row ) const
*/
$method=|int|sizeHintForRow|int

/*
virtual QRect visualRect ( const QModelIndex & index ) const = 0
*/
$method=|QRect|visualRect|const QModelIndex &

/*
virtual QVariant inputMethodQuery ( Qt::InputMethodQuery query ) const
*/
$method=|QVariant|inputMethodQuery|Qt::InputMethodQuery

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
