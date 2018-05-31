%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QTreeView

   METHOD new
   METHOD delete
   METHOD addTopLevelItem
   METHOD closePersistentEditor
   METHOD columnCount
   METHOD currentColumn
   METHOD currentItem
   METHOD editItem
   METHOD headerItem
   METHOD indexOfTopLevelItem
   METHOD insertTopLevelItem
   METHOD invisibleRootItem
   METHOD isFirstItemColumnSpanned
   METHOD itemAbove
   METHOD itemAt
   METHOD itemBelow
   METHOD itemWidget
   METHOD openPersistentEditor
   METHOD removeItemWidget
   METHOD setColumnCount
   METHOD setCurrentItem
   METHOD setFirstItemColumnSpanned
   METHOD setHeaderItem
   METHOD setHeaderLabel
   METHOD setHeaderLabels
   METHOD setItemWidget
   METHOD sortColumn
   METHOD sortItems
   METHOD takeTopLevelItem
   METHOD topLevelItem
   METHOD topLevelItemCount
   METHOD visualItemRect
   METHOD setSelectionModel
   METHOD clear
   METHOD collapseItem
   METHOD expandItem
   METHOD scrollToItem

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTreeWidget ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototype=void addTopLevelItem ( QTreeWidgetItem * item )
$method=|void|addTopLevelItem|QTreeWidgetItem *

$prototype=void closePersistentEditor ( QTreeWidgetItem * item, int column = 0 )
$method=|void|closePersistentEditor|QTreeWidgetItem *,int=0

$prototype=int columnCount () const
$method=|int|columnCount|

$prototype=int currentColumn () const
$method=|int|currentColumn|

$prototype=QTreeWidgetItem * currentItem () const
$method=|QTreeWidgetItem *|currentItem|

$prototype=void editItem ( QTreeWidgetItem * item, int column = 0 )
$method=|void|editItem|QTreeWidgetItem *,int=0

$prototype=QTreeWidgetItem *  headerItem () const
$method=|QTreeWidgetItem *|headerItem|

$prototype=int indexOfTopLevelItem ( QTreeWidgetItem * item ) const
$method=|int|indexOfTopLevelItem|QTreeWidgetItem *

$prototype=void insertTopLevelItem ( int index, QTreeWidgetItem * item )
$method=|void|insertTopLevelItem|int,QTreeWidgetItem *

$prototype=QTreeWidgetItem * invisibleRootItem () const
$method=|QTreeWidgetItem *|invisibleRootItem|

$prototype=bool isFirstItemColumnSpanned ( const QTreeWidgetItem * item ) const
$method=|bool|isFirstItemColumnSpanned|const QTreeWidgetItem *

$prototype=QTreeWidgetItem * itemAbove ( const QTreeWidgetItem * item ) const
$method=|QTreeWidgetItem *|itemAbove|const QTreeWidgetItem *

$prototype=QTreeWidgetItem * itemAt ( const QPoint & p ) const
$internalMethod=|QTreeWidgetItem *|itemAt,itemAt1|const QPoint &

$prototype=QTreeWidgetItem * itemAt ( int x, int y ) const
$internalMethod=|QTreeWidgetItem *|itemAt,itemAt2|int,int

//[1]QTreeWidgetItem * itemAt ( const QPoint & p ) const
//[2]QTreeWidgetItem * itemAt ( int x, int y ) const

HB_FUNC_STATIC( QTREEWIDGET_ITEMAT )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QTreeWidget_itemAt1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QTreeWidget_itemAt2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QTreeWidgetItem *  itemBelow ( const QTreeWidgetItem * item ) const
$method=|QTreeWidgetItem *|itemBelow|const QTreeWidgetItem *

$prototype=QWidget * itemWidget ( QTreeWidgetItem * item, int column ) const
$method=|QWidget *|itemWidget|QTreeWidgetItem *,int

$prototype=void openPersistentEditor ( QTreeWidgetItem * item, int column = 0 )
$method=|void|openPersistentEditor|QTreeWidgetItem *,int=0

$prototype=void removeItemWidget ( QTreeWidgetItem * item, int column )
$method=|void|removeItemWidget|QTreeWidgetItem *,int

$prototype=void setColumnCount ( int columns )
$method=|void|setColumnCount|int

$prototype=void setCurrentItem ( QTreeWidgetItem * item )
$internalMethod=|void|setCurrentItem,setCurrentItem1|QTreeWidgetItem *

$prototype=void setCurrentItem ( QTreeWidgetItem * item, int column )
$internalMethod=|void|setCurrentItem,setCurrentItem2|QTreeWidgetItem *,int

$prototype=void setCurrentItem ( QTreeWidgetItem * item, int column, QItemSelectionModel::SelectionFlags command )
$internalMethod=|void|setCurrentItem,setCurrentItem3|QTreeWidgetItem *,int,QItemSelectionModel::SelectionFlags

//[1]void setCurrentItem ( QTreeWidgetItem * item )
//[2]void setCurrentItem ( QTreeWidgetItem * item, int column )
//[3]void setCurrentItem ( QTreeWidgetItem * item, int column, QItemSelectionModel::SelectionFlags command )

HB_FUNC_STATIC( QTREEWIDGET_SETCURRENTITEM )
{
  if( ISNUMPAR(1) && ISQTREEWIDGETITEM(1) )
  {
    QTreeWidget_setCurrentItem1();
  }
  else if( ISNUMPAR(2) && ISQTREEWIDGETITEM(1) && ISNUM(2) )
  {
    QTreeWidget_setCurrentItem2();
  }
  else if( ISNUMPAR(3) && ISQTREEWIDGETITEM(1) && ISNUM(2) && ISNUM(3) )
  {
    QTreeWidget_setCurrentItem3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setFirstItemColumnSpanned ( const QTreeWidgetItem * item, bool span )
$method=|void|setFirstItemColumnSpanned|const QTreeWidgetItem *,bool

$prototype=void setHeaderItem ( QTreeWidgetItem * item )
$method=|void|setHeaderItem|QTreeWidgetItem *

$prototype=void setHeaderLabel ( const QString & label )
$method=|void|setHeaderLabel|const QString &

$prototype=void setHeaderLabels ( const QStringList & labels )
$method=|void|setHeaderLabels|const QStringList &

$prototype=void setItemWidget ( QTreeWidgetItem * item, int column, QWidget * widget )
$method=|void|setItemWidget|QTreeWidgetItem *,int,QWidget *

$prototype=int sortColumn () const
$method=|int|sortColumn|

$prototype=void sortItems ( int column, Qt::SortOrder order )
$method=|void|sortItems|int,Qt::SortOrder

$prototype=QTreeWidgetItem *  takeTopLevelItem ( int index )
$method=|QTreeWidgetItem *|takeTopLevelItem|int

$prototype=QTreeWidgetItem *  topLevelItem ( int index ) const
$method=|QTreeWidgetItem *|topLevelItem|int

$prototype=int topLevelItemCount () const
$method=|int|topLevelItemCount|

$prototype=QRect visualItemRect ( const QTreeWidgetItem * item ) const
$method=|QRect|visualItemRect|const QTreeWidgetItem *

$prototype=virtual void setSelectionModel ( QItemSelectionModel * selectionModel )
$virtualMethod=|void|setSelectionModel|QItemSelectionModel *

$prototype=void clear ()
$method=|void|clear|

$prototype=void collapseItem ( const QTreeWidgetItem * item )
$method=|void|collapseItem|const QTreeWidgetItem *

$prototype=void expandItem ( const QTreeWidgetItem * item )
$method=|void|expandItem|const QTreeWidgetItem *

$prototype=void scrollToItem ( const QTreeWidgetItem * item, QAbstractItemView::ScrollHint hint = EnsureVisible )
$method=|void|scrollToItem|const QTreeWidgetItem *,QAbstractItemView::ScrollHint=QAbstractItemView::EnsureVisible

$beginSignals
$signal=|currentItemChanged(QTreeWidgetItem*,QTreeWidgetItem*)
$signal=|itemActivated(QTreeWidgetItem*,int)
$signal=|itemChanged(QTreeWidgetItem*,int)
$signal=|itemClicked(QTreeWidgetItem*,int)
$signal=|itemCollapsed(QTreeWidgetItem*)
$signal=|itemDoubleClicked(QTreeWidgetItem*,int)
$signal=|itemEntered(QTreeWidgetItem*,int)
$signal=|itemExpanded(QTreeWidgetItem*)
$signal=|itemPressed(QTreeWidgetItem*,int)
$signal=|itemSelectionChanged()
$endSignals

#pragma ENDDUMP
