$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QHEADERVIEW
REQUEST QMODELINDEX
REQUEST QRECT
#endif

CLASS QTreeView INHERIT QAbstractItemView

   METHOD new
   METHOD delete
   METHOD allColumnsShowFocus
   METHOD autoExpandDelay
   METHOD columnAt
   METHOD columnViewportPosition
   METHOD columnWidth
   METHOD expandsOnDoubleClick
   METHOD header
   METHOD indentation
   METHOD indexAbove
   METHOD indexBelow
   METHOD isAnimated
   METHOD isColumnHidden
   METHOD isExpanded
   METHOD isFirstColumnSpanned
   METHOD isHeaderHidden
   METHOD isRowHidden
   METHOD isSortingEnabled
   METHOD itemsExpandable
   METHOD rootIsDecorated
   METHOD setAllColumnsShowFocus
   METHOD setAnimated
   METHOD setAutoExpandDelay
   METHOD setColumnHidden
   METHOD setColumnWidth
   METHOD setExpanded
   METHOD setExpandsOnDoubleClick
   METHOD setFirstColumnSpanned
   METHOD setHeader
   METHOD setHeaderHidden
   METHOD setIndentation
   METHOD setItemsExpandable
   METHOD setRootIsDecorated
   METHOD setRowHidden
   METHOD setSortingEnabled
   METHOD setUniformRowHeights
   METHOD setWordWrap
   METHOD sortByColumn
   METHOD uniformRowHeights
   METHOD wordWrap
   METHOD dataChanged
   METHOD indexAt
   METHOD keyboardSearch
   METHOD reset
   METHOD scrollTo
   METHOD selectAll
   METHOD setModel
   METHOD setRootIndex
   METHOD setSelectionModel
   METHOD visualRect
   METHOD collapse
   METHOD collapseAll
   METHOD expand
   METHOD expandAll
   METHOD expandToDepth
   METHOD hideColumn
   METHOD resizeColumnToContents
   METHOD showColumn

   METHOD onCollapsed
   METHOD onExpanded

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QTreeView ( QWidget * parent = 0 )
*/
$constructor=|new|QWidget *=0

$deleteMethod

/*
bool allColumnsShowFocus () const
*/
$method=|bool|allColumnsShowFocus|

/*
int autoExpandDelay () const
*/
$method=|int|autoExpandDelay|

/*
int columnAt ( int x ) const
*/
$method=|int|columnAt|int

/*
int columnViewportPosition ( int column ) const
*/
$method=|int|columnViewportPosition|int

/*
int columnWidth ( int column ) const
*/
$method=|int|columnWidth|int

/*
bool expandsOnDoubleClick () const
*/
$method=|bool|expandsOnDoubleClick|

/*
QHeaderView * header () const
*/
$method=|QHeaderView *|header|

/*
int indentation () const
*/
$method=|int|indentation|

/*
QModelIndex indexAbove ( const QModelIndex & index ) const
*/
$method=|QModelIndex|indexAbove|const QModelIndex &

/*
QModelIndex indexBelow ( const QModelIndex & index ) const
*/
$method=|QModelIndex|indexBelow|const QModelIndex &

/*
bool isAnimated () const
*/
$method=|bool|isAnimated|

/*
bool isColumnHidden ( int column ) const
*/
$method=|bool|isColumnHidden|int

/*
bool isExpanded ( const QModelIndex & index ) const
*/
$method=|bool|isExpanded|const QModelIndex &

/*
bool isFirstColumnSpanned ( int row, const QModelIndex & parent ) const
*/
$method=|bool|isFirstColumnSpanned|int,const QModelIndex &

/*
bool isHeaderHidden () const
*/
$method=|bool|isHeaderHidden|

/*
bool isRowHidden ( int row, const QModelIndex & parent ) const
*/
$method=|bool|isRowHidden|int,const QModelIndex &

/*
bool isSortingEnabled () const
*/
$method=|bool|isSortingEnabled|

/*
bool itemsExpandable () const
*/
$method=|bool|itemsExpandable|

/*
bool rootIsDecorated () const
*/
$method=|bool|rootIsDecorated|

/*
void setAllColumnsShowFocus ( bool enable )
*/
$method=|void|setAllColumnsShowFocus|bool

/*
void setAnimated ( bool enable )
*/
$method=|void|setAnimated|bool

/*
void setAutoExpandDelay ( int delay )
*/
$method=|void|setAutoExpandDelay|int

/*
void setColumnHidden ( int column, bool hide )
*/
$method=|void|setColumnHidden|int,bool

/*
void setColumnWidth ( int column, int width )
*/
$method=|void|setColumnWidth|int,int

/*
void setExpanded ( const QModelIndex & index, bool expanded )
*/
$method=|void|setExpanded|const QModelIndex &,bool

/*
void setExpandsOnDoubleClick ( bool enable )
*/
$method=|void|setExpandsOnDoubleClick|bool

/*
void setFirstColumnSpanned ( int row, const QModelIndex & parent, bool span )
*/
$method=|void|setFirstColumnSpanned|int,const QModelIndex &,bool

/*
void setHeader ( QHeaderView * header )
*/
$method=|void|setHeader|QHeaderView *

/*
void setHeaderHidden ( bool hide )
*/
$method=|void|setHeaderHidden|bool

/*
void setIndentation ( int i )
*/
$method=|void|setIndentation|int

/*
void setItemsExpandable ( bool enable )
*/
$method=|void|setItemsExpandable|bool

/*
void setRootIsDecorated ( bool show )
*/
$method=|void|setRootIsDecorated|bool

/*
void setRowHidden ( int row, const QModelIndex & parent, bool hide )
*/
$method=|void|setRowHidden|int,const QModelIndex &,bool

/*
void setSortingEnabled ( bool enable )
*/
$method=|void|setSortingEnabled|bool

/*
void setUniformRowHeights ( bool uniform )
*/
$method=|void|setUniformRowHeights|bool

/*
void setWordWrap ( bool on )
*/
$method=|void|setWordWrap|bool

/*
void sortByColumn ( int column, Qt::SortOrder order )
*/
$method=|void|sortByColumn|int,Qt::SortOrder

/*
bool uniformRowHeights () const
*/
$method=|bool|uniformRowHeights|

/*
bool wordWrap () const
*/
$method=|bool|wordWrap|

/*
virtual void dataChanged ( const QModelIndex & topLeft, const QModelIndex & bottomRight )
*/
$method=|void|dataChanged|const QModelIndex &,const QModelIndex &

/*
virtual QModelIndex indexAt ( const QPoint & point ) const
*/
$method=|QModelIndex|indexAt|const QPoint &

/*
virtual void keyboardSearch ( const QString & search )
*/
$method=|void|keyboardSearch|const QString &

/*
virtual void reset ()
*/
$method=|void|reset|

/*
virtual void scrollTo ( const QModelIndex & index, ScrollHint hint = EnsureVisible )
*/
$method=|void|scrollTo|const QModelIndex &,QTreeView::ScrollHint=QTreeView::EnsureVisible

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
virtual void setSelectionModel ( QItemSelectionModel * selectionModel )
*/
$method=|void|setSelectionModel|QItemSelectionModel *

/*
virtual QRect visualRect ( const QModelIndex & index ) const
*/
$method=|QRect|visualRect|const QModelIndex &

/*
void collapse ( const QModelIndex & index )
*/
$method=|void|collapse|const QModelIndex &

/*
void collapseAll ()
*/
$method=|void|collapseAll|

/*
void expand ( const QModelIndex & index )
*/
$method=|void|expand|const QModelIndex &

/*
void expandAll ()
*/
$method=|void|expandAll|

/*
void expandToDepth ( int depth )
*/
$method=|void|expandToDepth|int

/*
void hideColumn ( int column )
*/
$method=|void|hideColumn|int

/*
void resizeColumnToContents ( int column )
*/
$method=|void|resizeColumnToContents|int

/*
void showColumn ( int column )
*/
$method=|void|showColumn|int

#pragma ENDDUMP
