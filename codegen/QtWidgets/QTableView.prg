$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QHEADERVIEW
REQUEST QMODELINDEX
#endif

CLASS QTableView INHERIT QAbstractItemView

   METHOD new
   METHOD delete
   METHOD clearSpans
   METHOD columnAt
   METHOD columnSpan
   METHOD columnViewportPosition
   METHOD columnWidth
   METHOD gridStyle
   METHOD horizontalHeader
   METHOD isColumnHidden
   METHOD isCornerButtonEnabled
   METHOD isRowHidden
   METHOD isSortingEnabled
   METHOD rowAt
   METHOD rowHeight
   METHOD rowSpan
   METHOD rowViewportPosition
   METHOD setColumnHidden
   METHOD setColumnWidth
   METHOD setCornerButtonEnabled
   METHOD setGridStyle
   METHOD setHorizontalHeader
   METHOD setRowHeight
   METHOD setRowHidden
   METHOD setSortingEnabled
   METHOD setSpan
   METHOD setVerticalHeader
   METHOD setWordWrap
   METHOD showGrid
   METHOD sortByColumn
   METHOD verticalHeader
   METHOD wordWrap
   METHOD indexAt
   METHOD setModel
   METHOD setRootIndex
   METHOD setSelectionModel
   METHOD hideColumn
   METHOD hideRow
   METHOD resizeColumnToContents
   METHOD resizeColumnsToContents
   METHOD resizeRowToContents
   METHOD resizeRowsToContents
   METHOD selectColumn
   METHOD selectRow
   METHOD setShowGrid
   METHOD showColumn
   METHOD showRow

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QTableView ( QWidget * parent = 0 )
*/
$constructor=|new|QWidget *=0

$deleteMethod

/*
void clearSpans ()
*/
$method=|void|clearSpans|

/*
int columnAt ( int x ) const
*/
$method=|int|columnAt|int

/*
int columnSpan ( int row, int column ) const
*/
$method=|int|columnSpan|int,int

/*
int columnViewportPosition ( int column ) const
*/
$method=|int|columnViewportPosition|int

/*
int columnWidth ( int column ) const
*/
$method=|int|columnWidth|int

/*
Qt::PenStyle gridStyle () const
*/
$method=|Qt::PenStyle|gridStyle|

/*
QHeaderView * horizontalHeader () const
*/
$method=|QHeaderView *|horizontalHeader|

/*
bool isColumnHidden ( int column ) const
*/
$method=|bool|isColumnHidden|int

/*
bool isCornerButtonEnabled () const
*/
$method=|bool|isCornerButtonEnabled|

/*
bool isRowHidden ( int row ) const
*/
$method=|bool|isRowHidden|int

/*
bool isSortingEnabled () const
*/
$method=|bool|isSortingEnabled|

/*
int rowAt ( int y ) const
*/
$method=|int|rowAt|int

/*
int rowHeight ( int row ) const
*/
$method=|int|rowHeight|int

/*
int rowSpan ( int row, int column ) const
*/
$method=|int|rowSpan|int,int

/*
int rowViewportPosition ( int row ) const
*/
$method=|int|rowViewportPosition|int

/*
void setColumnHidden ( int column, bool hide )
*/
$method=|void|setColumnHidden|int,bool

/*
void setColumnWidth ( int column, int width )
*/
$method=|void|setColumnWidth|int,int

/*
void setCornerButtonEnabled ( bool enable )
*/
$method=|void|setCornerButtonEnabled|bool

/*
void setGridStyle ( Qt::PenStyle style )
*/
$method=|void|setGridStyle|Qt::PenStyle

/*
void setHorizontalHeader ( QHeaderView * header )
*/
$method=|void|setHorizontalHeader|QHeaderView *

/*
void setRowHeight ( int row, int height )
*/
$method=|void|setRowHeight|int,int

/*
void setRowHidden ( int row, bool hide )
*/
$method=|void|setRowHidden|int,bool

/*
void setSortingEnabled ( bool enable )
*/
$method=|void|setSortingEnabled|bool

/*
void setSpan ( int row, int column, int rowSpanCount, int columnSpanCount )
*/
$method=|void|setSpan|int,int,int,int

/*
void setVerticalHeader ( QHeaderView * header )
*/
$method=|void|setVerticalHeader|QHeaderView *

/*
void setWordWrap ( bool on )
*/
$method=|void|setWordWrap|bool

/*
bool showGrid () const
*/
$method=|bool|showGrid|

/*
void sortByColumn ( int column, Qt::SortOrder order )
*/
$method=|void|sortByColumn|int,Qt::SortOrder

/*
QHeaderView * verticalHeader () const
*/
$method=|QHeaderView *|verticalHeader|

/*
bool wordWrap () const
*/
$method=|bool|wordWrap|

/*
virtual QModelIndex indexAt ( const QPoint & pos ) const
*/
$method=|QModelIndex|indexAt|const QPoint &

/*
virtual void setModel ( QAbstractItemModel * model )
*/
$method=|void|setModel|QAbstractItemModel *

/*
virtual void setRootIndex ( const QModelIndex & index )
*/
$method=|void|setRootIndex|const QModelIndex &

/*
virtual void setSelectionModel ( QItemSelectionModel * selectionModel )
*/
$method=|void|setSelectionModel|QItemSelectionModel *

/*
void hideColumn ( int column )
*/
$method=|void|hideColumn|int

/*
void hideRow ( int row )
*/
$method=|void|hideRow|int

/*
void resizeColumnToContents ( int column )
*/
$method=|void|resizeColumnToContents|int

/*
void resizeColumnsToContents ()
*/
$method=|void|resizeColumnsToContents|

/*
void resizeRowToContents ( int row )
*/
$method=|void|resizeRowToContents|int

/*
void resizeRowsToContents ()
*/
$method=|void|resizeRowsToContents|

/*
void selectColumn ( int column )
*/
$method=|void|selectColumn|int

/*
void selectRow ( int row )
*/
$method=|void|selectRow|int

/*
void setShowGrid ( bool show )
*/
$method=|void|setShowGrid|bool

/*
void showColumn ( int column )
*/
$method=|void|showColumn|int

/*
void showRow ( int row )
*/
$method=|void|showRow|int

#pragma ENDDUMP
