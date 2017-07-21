$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QLISTWIDGETITEM
REQUEST QWIDGET
REQUEST QRECT
#endif

CLASS QListWidget INHERIT QListView

   METHOD new
   METHOD delete
   METHOD addItem
   METHOD addItems
   METHOD closePersistentEditor
   METHOD count
   METHOD currentItem
   METHOD currentRow
   METHOD editItem
   METHOD insertItem
   METHOD insertItems
   METHOD isSortingEnabled
   METHOD item
   METHOD itemAt
   METHOD itemWidget
   METHOD openPersistentEditor
   METHOD removeItemWidget
   METHOD row
   METHOD setCurrentItem
   METHOD setCurrentRow
   METHOD setItemWidget
   METHOD setSortingEnabled
   METHOD sortItems
   METHOD takeItem
   METHOD visualItemRect
   METHOD dropEvent
   METHOD clear
   METHOD scrollToItem

   METHOD onCurrentItemChanged
   METHOD onCurrentRowChanged
   METHOD onCurrentTextChanged
   METHOD onItemActivated
   METHOD onItemChanged
   METHOD onItemClicked
   METHOD onItemDoubleClicked
   METHOD onItemEntered
   METHOD onItemPressed
   METHOD onItemSelectionChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QListWidget ( QWidget * parent = 0 )
*/
$constructor=|new|QWidget *=0

$deleteMethod

/*
void addItem ( const QString & label )
*/
$internalMethod=|void|addItem,addItem1|const QString &

/*
void addItem ( QListWidgetItem * item )
*/
$internalMethod=|void|addItem,addItem2|QListWidgetItem *

//[1]void addItem ( const QString & label )
//[2]void addItem ( QListWidgetItem * item )

HB_FUNC_STATIC( QLISTWIDGET_ADDITEM )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QListWidget_addItem1();
  }
  else if( ISNUMPAR(1) && ISQLISTWIDGETITEM(1) )
  {
    QListWidget_addItem2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void addItems ( const QStringList & labels )
*/
$method=|void|addItems|const QStringList &

/*
void closePersistentEditor ( QListWidgetItem * item )
*/
$method=|void|closePersistentEditor|QListWidgetItem *

/*
int count () const
*/
$method=|int|count|

/*
QListWidgetItem * currentItem () const
*/
$method=|QListWidgetItem *|currentItem|

/*
int currentRow () const
*/
$method=|int|currentRow|

/*
void editItem ( QListWidgetItem * item )
*/
$method=|void|editItem|QListWidgetItem *

/*
void insertItem ( int row, QListWidgetItem * item )
*/
$internalMethod=|void|insertItem,insertItem1|int,QListWidgetItem *

/*
void insertItem ( int row, const QString & label )
*/
$internalMethod=|void|insertItem,insertItem2|int,const QString &

//[1]void insertItem ( int row, QListWidgetItem * item )
//[2]void insertItem ( int row, const QString & label )

HB_FUNC_STATIC( QLISTWIDGET_INSERTITEM )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISQLISTWIDGETITEM(2) )
  {
    QListWidget_insertItem1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISCHAR(2) )
  {
    QListWidget_insertItem2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void insertItems ( int row, const QStringList & labels )
*/
$method=|void|insertItems|int,const QStringList &

/*
bool isSortingEnabled () const
*/
$method=|bool|isSortingEnabled|

/*
QListWidgetItem * item ( int row ) const
*/
$method=|QListWidgetItem *|item|int

/*
QListWidgetItem * itemAt ( const QPoint & p ) const
*/
$internalMethod=|QListWidgetItem *|itemAt,itemAt1|const QPoint &

/*
QListWidgetItem * itemAt ( int x, int y ) const
*/
$internalMethod=|QListWidgetItem *|itemAt,itemAt2|int,int

//[1]QListWidgetItem * itemAt ( const QPoint & p ) const
//[2]QListWidgetItem * itemAt ( int x, int y ) const

HB_FUNC_STATIC( QLISTWIDGET_ITEMAT )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QListWidget_itemAt1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QListWidget_itemAt2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QWidget * itemWidget ( QListWidgetItem * item ) const
*/
$method=|QWidget *|itemWidget|QListWidgetItem *

/*
void openPersistentEditor ( QListWidgetItem * item )
*/
$method=|void|openPersistentEditor|QListWidgetItem *

/*
void removeItemWidget ( QListWidgetItem * item )
*/
$method=|void|removeItemWidget|QListWidgetItem *

/*
int row ( const QListWidgetItem * item ) const
*/
$method=|int|row|const QListWidgetItem *

/*
void setCurrentItem ( QListWidgetItem * item )
*/
$internalMethod=|void|setCurrentItem,setCurrentItem1|QListWidgetItem *

/*
void setCurrentItem ( QListWidgetItem * item, QItemSelectionModel::SelectionFlags command )
*/
$internalMethod=|void|setCurrentItem,setCurrentItem2|QListWidgetItem *,QItemSelectionModel::SelectionFlags

//[1]void setCurrentItem ( QListWidgetItem * item )
//[2]void setCurrentItem ( QListWidgetItem * item, QItemSelectionModel::SelectionFlags command )

HB_FUNC_STATIC( QLISTWIDGET_SETCURRENTITEM )
{
  if( ISNUMPAR(1) && ISQLISTWIDGETITEM(1) )
  {
    QListWidget_setCurrentItem1();
  }
  else if( ISNUMPAR(2) && ISQLISTWIDGETITEM(1) && ISNUM(2) )
  {
    QListWidget_setCurrentItem2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setCurrentRow ( int row )
*/
$internalMethod=|void|setCurrentRow,setCurrentRow1|int

/*
void setCurrentRow ( int row, QItemSelectionModel::SelectionFlags command )
*/
$internalMethod=|void|setCurrentRow,setCurrentRow2|int,QItemSelectionModel::SelectionFlags

//[1]void setCurrentRow ( int row )
//[2]void setCurrentRow ( int row, QItemSelectionModel::SelectionFlags command )

HB_FUNC_STATIC( QLISTWIDGET_SETCURRENTROW )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QListWidget_setCurrentRow1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QListWidget_setCurrentRow2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setItemWidget ( QListWidgetItem * item, QWidget * widget )
*/
$method=|void|setItemWidget|QListWidgetItem *,QWidget *

/*
void setSortingEnabled ( bool enable )
*/
$method=|void|setSortingEnabled|bool

/*
void sortItems ( Qt::SortOrder order = Qt::AscendingOrder )
*/
$method=|void|sortItems|Qt::SortOrder=Qt::AscendingOrder

/*
QListWidgetItem * takeItem ( int row )
*/
$method=|QListWidgetItem *|takeItem|int

/*
QRect visualItemRect ( const QListWidgetItem * item ) const
*/
$method=|QRect|visualItemRect|const QListWidgetItem *

/*
virtual void dropEvent ( QDropEvent * event )
*/
$method=|void|dropEvent|QDropEvent *

/*
void clear ()
*/
$methood=|void|clear|

/*
void scrollToItem ( const QListWidgetItem * item, QAbstractItemView::ScrollHint hint = EnsureVisible )
*/
$method=|void|scrollToItem|const QListWidgetItem *,QAbstractItemView::ScrollHint=EnsureVisible

#pragma ENDDUMP
