$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QTREEWIDGETITEM
REQUEST QWIDGET
REQUEST QRECT
#endif

CLASS QTreeWidget INHERIT QTreeView

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

   METHOD onCurrentItemChanged
   METHOD onItemActivated
   METHOD onItemChanged
   METHOD onItemClicked
   METHOD onItemCollapsed
   METHOD onItemDoubleClicked
   METHOD onItemEntered
   METHOD onItemExpanded
   METHOD onItemPressed
   METHOD onItemSelectionChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QTreeWidget ( QWidget * parent = 0 )
*/
$constructor=|new|QWidget *=0

$deleteMethod

/*
void addTopLevelItem ( QTreeWidgetItem * item )
*/
$method=|void|addTopLevelItem|QTreeWidgetItem *

/*
void closePersistentEditor ( QTreeWidgetItem * item, int column = 0 )
*/
$method=|void|closePersistentEditor|QTreeWidgetItem *,int=0

/*
int columnCount () const
*/
$method=|int|columnCount|

/*
int currentColumn () const
*/
$method=|int|currentColumn|

/*
QTreeWidgetItem * currentItem () const
*/
$method=|QTreeWidgetItem *|currentItem|

/*
void editItem ( QTreeWidgetItem * item, int column = 0 )
*/
$method=|void|editItem|QTreeWidgetItem *,int=0

/*
QTreeWidgetItem *  headerItem () const
*/
$method=|QTreeWidgetItem *|headerItem|

/*
int indexOfTopLevelItem ( QTreeWidgetItem * item ) const
*/
$method=|int|indexOfTopLevelItem|QTreeWidgetItem *

/*
void insertTopLevelItem ( int index, QTreeWidgetItem * item )
*/
$method=|void|insertTopLevelItem|int,QTreeWidgetItem *

/*
QTreeWidgetItem * invisibleRootItem () const
*/
$method=|QTreeWidgetItem *|invisibleRootItem|

/*
bool isFirstItemColumnSpanned ( const QTreeWidgetItem * item ) const
*/
$method=|bool|isFirstItemColumnSpanned|const QTreeWidgetItem *

/*
QTreeWidgetItem * itemAbove ( const QTreeWidgetItem * item ) const
*/
$method=|QTreeWidgetItem *|itemAbove|const QTreeWidgetItem *

/*
QTreeWidgetItem * itemAt ( const QPoint & p ) const
*/
$internalMethod=|QTreeWidgetItem *|itemAt,itemAt1|const QPoint &

/*
QTreeWidgetItem * itemAt ( int x, int y ) const
*/
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

/*
QTreeWidgetItem *  itemBelow ( const QTreeWidgetItem * item ) const
*/
$method=|QTreeWidgetItem *|itemBelow|const QTreeWidgetItem *

/*
QWidget * itemWidget ( QTreeWidgetItem * item, int column ) const
*/
$method=|QWidget *|itemWidget|QTreeWidgetItem *,int

/*
void openPersistentEditor ( QTreeWidgetItem * item, int column = 0 )
*/
$method=|void|openPersistentEditor|QTreeWidgetItem *,int=0

/*
void removeItemWidget ( QTreeWidgetItem * item, int column )
*/
$method=|void|removeItemWidget|QTreeWidgetItem *,int

/*
void setColumnCount ( int columns )
*/
$method=|void|setColumnCount|int

/*
void setCurrentItem ( QTreeWidgetItem * item )
*/
$internalMethod=|void|setCurrentItem,setCurrentItem1|QTreeWidgetItem *

/*
void setCurrentItem ( QTreeWidgetItem * item, int column )
*/
$internalMethod=|void|setCurrentItem,setCurrentItem2|QTreeWidgetItem *,int

/*
void setCurrentItem ( QTreeWidgetItem * item, int column, QItemSelectionModel::SelectionFlags command )
*/
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

/*
void setFirstItemColumnSpanned ( const QTreeWidgetItem * item, bool span )
*/
$method=|void|setFirstItemColumnSpanned|const QTreeWidgetItem *,bool

/*
void setHeaderItem ( QTreeWidgetItem * item )
*/
$method=|void|setHeaderItem|QTreeWidgetItem *

/*
void setHeaderLabel ( const QString & label )
*/
$method=|void|setHeaderLabel|const QString &

/*
void setHeaderLabels ( const QStringList & labels )
*/
$method=|void|setHeaderLabels|const QStringList &

/*
void setItemWidget ( QTreeWidgetItem * item, int column, QWidget * widget )
*/
$method=|void|setItemWidget|QTreeWidgetItem *,int,QWidget *

/*
int sortColumn () const
*/
$method=|int|sortColumn|

/*
void sortItems ( int column, Qt::SortOrder order )
*/
$method=|void|sortItems|int,Qt::SortOrder

/*
QTreeWidgetItem *  takeTopLevelItem ( int index )
*/
$method=|QTreeWidgetItem *|takeTopLevelItem|int

/*
QTreeWidgetItem *  topLevelItem ( int index ) const
*/
$method=|QTreeWidgetItem *|topLevelItem|int

/*
int topLevelItemCount () const
*/
$method=|int|topLevelItemCount|

/*
QRect visualItemRect ( const QTreeWidgetItem * item ) const
*/
$method=|QRect|visualItemRect|const QTreeWidgetItem *

/*
virtual void setSelectionModel ( QItemSelectionModel * selectionModel )
*/
$method=|void|setSelectionModel|QItemSelectionModel *

/*
void clear ()
*/
$method=|void|clear|

/*
void collapseItem ( const QTreeWidgetItem * item )
*/
$method=|void|collapseItem|const QTreeWidgetItem *

/*
void expandItem ( const QTreeWidgetItem * item )
*/
$method=|void|expandItem|const QTreeWidgetItem *

/*
void scrollToItem ( const QTreeWidgetItem * item, QAbstractItemView::ScrollHint hint = EnsureVisible )
*/
$method=|void|scrollToItem|const QTreeWidgetItem *,QAbstractItemView::ScrollHint=QAbstractItemView::EnsureVisible

#pragma ENDDUMP
