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

$prototype=QTableView ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototype=void clearSpans ()
$method=|void|clearSpans|

$prototype=int columnAt ( int x ) const
$method=|int|columnAt|int

$prototype=int columnSpan ( int row, int column ) const
$method=|int|columnSpan|int,int

$prototype=int columnViewportPosition ( int column ) const
$method=|int|columnViewportPosition|int

$prototype=int columnWidth ( int column ) const
$method=|int|columnWidth|int

$prototype=Qt::PenStyle gridStyle () const
$method=|Qt::PenStyle|gridStyle|

$prototype=QHeaderView * horizontalHeader () const
$method=|QHeaderView *|horizontalHeader|

$prototype=bool isColumnHidden ( int column ) const
$method=|bool|isColumnHidden|int

$prototype=bool isCornerButtonEnabled () const
$method=|bool|isCornerButtonEnabled|

$prototype=bool isRowHidden ( int row ) const
$method=|bool|isRowHidden|int

$prototype=bool isSortingEnabled () const
$method=|bool|isSortingEnabled|

$prototype=int rowAt ( int y ) const
$method=|int|rowAt|int

$prototype=int rowHeight ( int row ) const
$method=|int|rowHeight|int

$prototype=int rowSpan ( int row, int column ) const
$method=|int|rowSpan|int,int

$prototype=int rowViewportPosition ( int row ) const
$method=|int|rowViewportPosition|int

$prototype=void setColumnHidden ( int column, bool hide )
$method=|void|setColumnHidden|int,bool

$prototype=void setColumnWidth ( int column, int width )
$method=|void|setColumnWidth|int,int

$prototype=void setCornerButtonEnabled ( bool enable )
$method=|void|setCornerButtonEnabled|bool

$prototype=void setGridStyle ( Qt::PenStyle style )
$method=|void|setGridStyle|Qt::PenStyle

$prototype=void setHorizontalHeader ( QHeaderView * header )
$method=|void|setHorizontalHeader|QHeaderView *

$prototype=void setRowHeight ( int row, int height )
$method=|void|setRowHeight|int,int

$prototype=void setRowHidden ( int row, bool hide )
$method=|void|setRowHidden|int,bool

$prototype=void setSortingEnabled ( bool enable )
$method=|void|setSortingEnabled|bool

$prototype=void setSpan ( int row, int column, int rowSpanCount, int columnSpanCount )
$method=|void|setSpan|int,int,int,int

$prototype=void setVerticalHeader ( QHeaderView * header )
$method=|void|setVerticalHeader|QHeaderView *

$prototype=void setWordWrap ( bool on )
$method=|void|setWordWrap|bool

$prototype=bool showGrid () const
$method=|bool|showGrid|

$prototype=void sortByColumn ( int column, Qt::SortOrder order )
$method=|void|sortByColumn|int,Qt::SortOrder

$prototype=QHeaderView * verticalHeader () const
$method=|QHeaderView *|verticalHeader|

$prototype=bool wordWrap () const
$method=|bool|wordWrap|

$prototype=virtual QModelIndex indexAt ( const QPoint & pos ) const
$method=|QModelIndex|indexAt|const QPoint &

$prototype=virtual void setModel ( QAbstractItemModel * model )
$method=|void|setModel|QAbstractItemModel *

$prototype=virtual void setRootIndex ( const QModelIndex & index )
$method=|void|setRootIndex|const QModelIndex &

$prototype=virtual void setSelectionModel ( QItemSelectionModel * selectionModel )
$method=|void|setSelectionModel|QItemSelectionModel *

$prototype=void hideColumn ( int column )
$method=|void|hideColumn|int

$prototype=void hideRow ( int row )
$method=|void|hideRow|int

$prototype=void resizeColumnToContents ( int column )
$method=|void|resizeColumnToContents|int

$prototype=void resizeColumnsToContents ()
$method=|void|resizeColumnsToContents|

$prototype=void resizeRowToContents ( int row )
$method=|void|resizeRowToContents|int

$prototype=void resizeRowsToContents ()
$method=|void|resizeRowsToContents|

$prototype=void selectColumn ( int column )
$method=|void|selectColumn|int

$prototype=void selectRow ( int row )
$method=|void|selectRow|int

$prototype=void setShowGrid ( bool show )
$method=|void|setShowGrid|bool

$prototype=void showColumn ( int column )
$method=|void|showColumn|int

$prototype=void showRow ( int row )
$method=|void|showRow|int

#pragma ENDDUMP
