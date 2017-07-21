$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QTABLEWIDGETITEM
REQUEST QRECT
#endif

CLASS QTableWidget INHERIT QTableView

   METHOD new
   METHOD delete
   METHOD cellWidget
   METHOD closePersistentEditor
   METHOD column
   METHOD columnCount
   METHOD currentColumn
   METHOD currentItem
   METHOD currentRow
   METHOD editItem
   METHOD horizontalHeaderItem
   METHOD item
   METHOD itemAt
   METHOD openPersistentEditor
   METHOD removeCellWidget
   METHOD row
   METHOD rowCount
   METHOD setCellWidget
   METHOD setColumnCount
   METHOD setCurrentCell
   METHOD setCurrentItem
   METHOD setHorizontalHeaderItem
   METHOD setHorizontalHeaderLabels
   METHOD setItem
   METHOD setItemPrototype
   METHOD setRangeSelected
   METHOD setRowCount
   METHOD setVerticalHeaderItem
   METHOD setVerticalHeaderLabels
   METHOD sortItems
   METHOD takeHorizontalHeaderItem
   METHOD takeItem
   METHOD takeVerticalHeaderItem
   METHOD verticalHeaderItem
   METHOD visualColumn
   METHOD visualItemRect
   METHOD visualRow
   METHOD clear
   METHOD clearContents
   METHOD insertColumn
   METHOD insertRow
   METHOD removeColumn
   METHOD removeRow
   METHOD scrollToItem

   METHOD onCellActivated
   METHOD onCellChanged
   METHOD onCellClicked
   METHOD onCellDoubleClicked
   METHOD onCellEntered
   METHOD onCellPressed
   METHOD onCurrentCellChanged
   METHOD onCurrentItemChanged
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
QTableWidget ( QWidget * parent = 0 )
*/
$internalConstructor=|new1|QWidget *=0

/*
QTableWidget ( int rows, int columns, QWidget * parent = 0 )
*/
$internalConstructor=|new2|int,int,QWidget *=0

//[1]QTableWidget ( QWidget * parent = 0 )
//[2]QTableWidget ( int rows, int columns, QWidget * parent = 0 )

HB_FUNC_STATIC( QTABLEWIDGET_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QTableWidget_new1();
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && ISOPTQWIDGET(3) )
  {
    QTableWidget_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QWidget * cellWidget ( int row, int column ) const
*/
$method=|QWidget *|cellWidget|int,int

/*
void closePersistentEditor ( QTableWidgetItem * item )
*/
$method=|void|closePersistentEditor|QTableWidgetItem *

/*
int column ( const QTableWidgetItem * item ) const
*/
$method=|int|column|const QTableWidgetItem *

/*
int columnCount () const
*/
$method=|int|columnCount|

/*
int currentColumn () const
*/
$method=|int|currentColumn|

/*
QTableWidgetItem * currentItem () const
*/
$method=|QTableWidgetItem *|currentItem|

/*
int currentRow () const
*/
$method=|int|currentRow|

/*
void editItem ( QTableWidgetItem * item )
*/
$method=|void|editItem|QTableWidgetItem *

/*
QTableWidgetItem * horizontalHeaderItem ( int column ) const
*/
$method=|QTableWidgetItem *|horizontalHeaderItem|int

/*
QTableWidgetItem * item ( int row, int column ) const
*/
$method=|QTableWidgetItem *|item|int,int

/*
QTableWidgetItem * itemAt ( const QPoint & point ) const
*/
$internalMethod=|QTableWidgetItem *|itemAt,itemAt1|const QPoint &

/*
QTableWidgetItem * itemAt ( int ax, int ay ) const
*/
$internalMethod=|QTableWidgetItem *|itemAt,itemAt2|int,int

//[1]QTableWidgetItem * itemAt ( const QPoint & point ) const
//[2]QTableWidgetItem * itemAt ( int ax, int ay ) const

HB_FUNC_STATIC( QTABLEWIDGET_ITEMAT )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QTableWidget_itemAt1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QTableWidget_itemAt2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void openPersistentEditor ( QTableWidgetItem * item )
*/
$method=|void|openPersistentEditor|QTableWidgetItem *

/*
void removeCellWidget ( int row, int column )
*/
$method=|void|removeCellWidget|int,int

/*
int row ( const QTableWidgetItem * item ) const
*/
$method=|int|row|const QTableWidgetItem *

/*
int rowCount () const
*/
$method=|int|rowCount|

/*
void setCellWidget ( int row, int column, QWidget * widget )
*/
$method=|void|setCellWidget|int,int,QWidget *

/*
void setColumnCount ( int columns )
*/
$method=|void|setColumnCount|int

/*
void setCurrentCell ( int row, int column )
*/
$internalMethod=|void|setCurrentCell,setCurrentCell1|int,int

/*
void setCurrentCell ( int row, int column, QItemSelectionModel::SelectionFlags command )
*/
$internalMethod=|void|setCurrentCell,setCurrentCell2|int,int,QItemSelectionModel::SelectionFlags

//[1]void setCurrentCell ( int row, int column )
//[2]void setCurrentCell ( int row, int column, QItemSelectionModel::SelectionFlags command )

HB_FUNC_STATIC( QTABLEWIDGET_SETCURRENTCELL )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QTableWidget_setCurrentCell1();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QTableWidget_setCurrentCell2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setCurrentItem ( QTableWidgetItem * item )
*/
$internalMethod|void|setCurrentItem,setCurrentItem1|QTableWidgetItem *

/*
void setCurrentItem ( QTableWidgetItem * item, QItemSelectionModel::SelectionFlags command )
*/
$internalMethod=|void|setCurrentItem,setCurrentItem2|QTableWidgetItem *,QItemSelectionModel::SelectionFlags

//[1]void setCurrentItem ( QTableWidgetItem * item )
//[2]void setCurrentItem ( QTableWidgetItem * item, QItemSelectionModel::SelectionFlags command )

HB_FUNC_STATIC( QTABLEWIDGET_SETCURRENTITEM )
{
  if( ISNUMPAR(1) && ISQTABLEWIDGETITEM(1) )
  {
    QTableWidget_setCurrentItem1();
  }
  else if( ISNUMPAR(2) && ISQTABLEWIDGETITEM(1) && ISNUM(2) )
  {
    QTableWidget_setCurrentItem2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setHorizontalHeaderItem ( int column, QTableWidgetItem * item )
*/
$method=|void|setHorizontalHeaderItem|int,QTableWidgetItem *

/*
void setHorizontalHeaderLabels ( const QStringList & labels )
*/
$method=|void|setHorizontalHeaderLabels|const QStringList &

/*
void setItem ( int row, int column, QTableWidgetItem * item )
*/
$method=|void|setItem|int,int,QTableWidgetItem *

/*
void setItemPrototype ( const QTableWidgetItem * item )
*/
$method=|void|setItemPrototype|const QTableWidgetItem *

/*
void setRangeSelected ( const QTableWidgetSelectionRange & range, bool select )
*/
$method=|void|setRangeSelected|const QTableWidgetSelectionRange &,bool

/*
void setRowCount ( int rows )
*/
$method=|void|setRowCount|int

/*
void setVerticalHeaderItem ( int row, QTableWidgetItem * item )
*/
$method=|void|setVerticalHeaderItem|int,QTableWidgetItem *

/*
void setVerticalHeaderLabels ( const QStringList & labels )
*/
$method=|void|setVerticalHeaderLabels|const QStringList &

/*
void sortItems ( int column, Qt::SortOrder order = Qt::AscendingOrder )
*/
$method=|void|sortItems|int,Qt::SortOrder=Qt::AscendingOrder

/*
QTableWidgetItem * takeHorizontalHeaderItem ( int column )
*/
$method=|QTableWidgetItem *|takeHorizontalHeaderItem|int

/*
QTableWidgetItem * takeItem ( int row, int column )
*/
$method=|QTableWidgetItem *|takeItem|int,int

/*
QTableWidgetItem * takeVerticalHeaderItem ( int row )
*/
$method=|QTableWidgetItem *|takeVerticalHeaderItem|int

/*
QTableWidgetItem * verticalHeaderItem ( int row ) const
*/
$method=|QTableWidgetItem *|verticalHeaderItem|int

/*
int visualColumn ( int logicalColumn ) const
*/
$method=|int|visualColumn|int

/*
QRect visualItemRect ( const QTableWidgetItem * item ) const
*/
$method=|QRect|visualItemRect|const QTableWidgetItem *

/*
int visualRow ( int logicalRow ) const
*/
$method=|int|visualRow|int

/*
void clear ()
*/
$method=|void|clear|

/*
void clearContents ()
*/
$method=|void|clearContents|

/*
void insertColumn ( int column )
*/
$method=|void|insertColumn|int

/*
void insertRow ( int row )
*/
$method=|void|insertRow|int

/*
void removeColumn ( int column )
*/
$method=|void|removeColumn|int

/*
void removeRow ( int row )
*/
$method=|void|removeRow|int

/*
void scrollToItem ( const QTableWidgetItem * item, QAbstractItemView::ScrollHint hint = EnsureVisible )
*/
$method=|void|scrollToItem|const QTableWidgetItem *,QAbstractItemView::ScrollHint=QAbstractItemView::EnsureVisible

#pragma ENDDUMP
