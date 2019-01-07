%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractScrollArea

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=bool alternatingRowColors () const
$method=|bool|alternatingRowColors|

$prototype=void setAlternatingRowColors ( bool enable )
$method=|void|setAlternatingRowColors|bool

$prototype=int autoScrollMargin () const
$method=|int|autoScrollMargin|

$prototype=void setAutoScrollMargin ( int margin )
$method=|void|setAutoScrollMargin|int

$prototype=QModelIndex currentIndex () const
$method=|QModelIndex|currentIndex|

$prototype=void setCurrentIndex ( const QModelIndex & index )
$method=|void|setCurrentIndex|const QModelIndex &

$prototype=Qt::DropAction defaultDropAction () const
$method=|Qt::DropAction|defaultDropAction|

$prototype=void setDefaultDropAction ( Qt::DropAction dropAction )
$method=|void|setDefaultDropAction|Qt::DropAction

$prototype=DragDropMode dragDropMode () const
$method=|QAbstractItemView::DragDropMode|dragDropMode|

$prototype=void setDragDropMode ( DragDropMode behavior )
$method=|void|setDragDropMode|QAbstractItemView::DragDropMode

$prototype=bool dragDropOverwriteMode () const
$method=|bool|dragDropOverwriteMode|

$prototype=void setDragDropOverwriteMode ( bool overwrite )
$method=|void|setDragDropOverwriteMode|bool

$prototype=bool dragEnabled () const
$method=|bool|dragEnabled|

$prototype=void setDragEnabled ( bool enable )
$method=|void|setDragEnabled|bool

$prototype=EditTriggers editTriggers () const
$method=|QAbstractItemView::EditTriggers|editTriggers|

$prototype=void setEditTriggers ( EditTriggers triggers )
$method=|void|setEditTriggers|QAbstractItemView::EditTriggers

$prototype=bool hasAutoScroll () const
$method=|bool|hasAutoScroll|

$prototype=void setAutoScroll ( bool enable )
$method=|void|setAutoScroll|bool

$prototype=ScrollMode horizontalScrollMode () const
$method=|QAbstractItemView::ScrollMode|horizontalScrollMode|

$prototype=void setHorizontalScrollMode ( ScrollMode mode )
$method=|void|setHorizontalScrollMode|QAbstractItemView::ScrollMode

$prototype=QSize iconSize () const
$method=|QSize|iconSize|

$prototype=void setIconSize ( const QSize & size )
$method=|void|setIconSize|const QSize &

$prototype=QWidget * indexWidget ( const QModelIndex & index ) const
$method=|QWidget *|indexWidget|const QModelIndex &

$prototype=void setIndexWidget ( const QModelIndex & index, QWidget * widget )
$method=|void|setIndexWidget|const QModelIndex &,QWidget *

$prototype=void closePersistentEditor ( const QModelIndex & index )
$method=|void|closePersistentEditor|const QModelIndex &

$prototype=virtual QModelIndex indexAt ( const QPoint & point ) const = 0
$virtualMethod=|QModelIndex|indexAt|const QPoint &

$prototype=QAbstractItemDelegate * itemDelegate () const
$internalMethod=|QAbstractItemDelegate *|itemDelegate,itemDelegate1|

$prototype=QAbstractItemDelegate * itemDelegate ( const QModelIndex & index ) const
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
$addMethod=itemDelegate

$prototype=void setItemDelegate ( QAbstractItemDelegate * delegate )
$method=|void|setItemDelegate|QAbstractItemDelegate *

$prototype=QAbstractItemDelegate * itemDelegateForColumn ( int column ) const
$method=|QAbstractItemDelegate *|itemDelegateForColumn|int

$prototype=void setItemDelegateForColumn ( int column, QAbstractItemDelegate * delegate )
$method=|void|setItemDelegateForColumn|int,QAbstractItemDelegate *

$prototype=QAbstractItemDelegate * itemDelegateForRow ( int row ) const
$method=|QAbstractItemDelegate *|itemDelegateForRow|int

$prototype=void setItemDelegateForRow ( int row, QAbstractItemDelegate * delegate )
$method=|void|setItemDelegateForRow|int,QAbstractItemDelegate *

$prototype=virtual void keyboardSearch ( const QString & search )
$virtualMethod=|void|keyboardSearch|const QString &

$prototype=QAbstractItemModel * model () const
$method=|QAbstractItemModel *|model|

$prototype=virtual void setModel ( QAbstractItemModel * model )
$virtualMethod=|void|setModel|QAbstractItemModel *

$prototype=void openPersistentEditor ( const QModelIndex & index )
$method=|void|openPersistentEditor|const QModelIndex &

$prototype=QModelIndex rootIndex () const
$method=|QModelIndex|rootIndex|

$prototype=virtual void setRootIndex ( const QModelIndex & index )
$virtualMethod=|void|setRootIndex|const QModelIndex &

$prototype=virtual void scrollTo ( const QModelIndex & index, ScrollHint hint = EnsureVisible ) = 0
$virtualMethod=|void|scrollTo|const QModelIndex &,QAbstractItemView::ScrollHint=QAbstractItemView::EnsureVisible

$prototype=QAbstractItemView::SelectionBehavior selectionBehavior () const
$method=|QAbstractItemView::SelectionBehavior|selectionBehavior|

$prototype=void setSelectionBehavior ( QAbstractItemView::SelectionBehavior behavior )
$method=|void|setSelectionBehavior|QAbstractItemView::SelectionBehavior

$prototype=QAbstractItemView::SelectionMode selectionMode () const
$method=|QAbstractItemView::SelectionMode|selectionMode|

$prototype=void setSelectionMode ( QAbstractItemView::SelectionMode mode )
$method=|void|setSelectionMode|QAbstractItemView::SelectionMode

$prototype=QItemSelectionModel * selectionModel () const
$method=|QItemSelectionModel *|selectionModel|

$prototype=virtual void setSelectionModel ( QItemSelectionModel * selectionModel )
$virtualMethod=|void|setSelectionModel|QItemSelectionModel *

$prototype=bool showDropIndicator () const
$method=|bool|showDropIndicator|

$prototype=void setDropIndicatorShown ( bool enable )
$method=|void|setDropIndicatorShown|bool

$prototype=bool tabKeyNavigation () const
$method=|bool|tabKeyNavigation|

$prototype=void setTabKeyNavigation ( bool enable )
$method=|void|setTabKeyNavigation|bool

$prototype=Qt::TextElideMode textElideMode () const
$method=|Qt::TextElideMode|textElideMode|

$prototype=void setTextElideMode ( Qt::TextElideMode mode )
$method=|void|setTextElideMode|Qt::TextElideMode

$prototype=ScrollMode verticalScrollMode () const
$method=|QAbstractItemView::ScrollMode|verticalScrollMode|

$prototype=void setVerticalScrollMode ( ScrollMode mode )
$method=|void|setVerticalScrollMode|QAbstractItemView::ScrollMode

$prototype=virtual int sizeHintForColumn ( int column ) const
$virtualMethod=|int|sizeHintForColumn|int

$prototype=QSize sizeHintForIndex ( const QModelIndex & index ) const
$method=|QSize|sizeHintForIndex|const QModelIndex &

$prototype=virtual int sizeHintForRow ( int row ) const
$virtualMethod=|int|sizeHintForRow|int

$prototype=virtual QRect visualRect ( const QModelIndex & index ) const = 0
$virtualMethod=|QRect|visualRect|const QModelIndex &

$prototype=virtual QVariant inputMethodQuery ( Qt::InputMethodQuery query ) const
$virtualMethod=|QVariant|inputMethodQuery|Qt::InputMethodQuery

$prototype=void clearSelection ()
$method=|void|clearSelection|

$prototype=void edit ( const QModelIndex & index )
$method=|void|edit|const QModelIndex &

$prototype=virtual void reset ()
$virtualMethod=|void|reset|

$prototype=void scrollToBottom ()
$method=|void|scrollToBottom|

$prototype=void scrollToTop ()
$method=|void|scrollToTop|

$prototype=virtual void selectAll ()
$virtualMethod=|void|selectAll|

$prototype=void update ( int x, int y, int w, int h )
$internalMethod=|void|update,update1|int,int,int,int

$prototype=void update ( const QRect & rect )
$internalMethod=|void|update,update2|const QRect &

$prototype=void update ( const QRegion & rgn )
$internalMethod=|void|update,update3|const QRegion &

$prototype=void update ()
$internalMethod=|void|update,update4|

$prototype=void update ( const QModelIndex & index )
$internalMethod=|void|update,update5|const QModelIndex &

//[1]void update ( int x, int y, int w, int h ) [QWidget]
//[2]void update ( const QRect & rect )         [QWidget]
//[3]void update ( const QRegion & rgn )        [QWidget]
//[4]void update ()                             [QWidget]
//[5]void update ( const QModelIndex & index )  [QAbstractItemView]

HB_FUNC_STATIC( QABSTRACTITEMVIEW_UPDATE )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QAbstractItemView_update1();
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QAbstractItemView_update2();
  }
  else if( ISNUMPAR(1) && ISQREGION(1) )
  {
    QAbstractItemView_update3();
  }
  else if( ISNUMPAR(0) )
  {
    QAbstractItemView_update4();
  }
  else if( ISNUMPAR(1) && ISQMODELINDEX(1) )
  {
    QAbstractItemView_update5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=update

$prototype=virtual void doItemsLayout()
$virtualMethod=|void|doItemsLayout|

$beginSignals
$signal=|activated(QModelIndex)
$signal=|clicked(QModelIndex)
$signal=|doubleClicked(QModelIndex)
$signal=|entered(QModelIndex)
$signal=|pressed(QModelIndex)
$signal=|viewportEntered()
$endSignals

#pragma ENDDUMP
