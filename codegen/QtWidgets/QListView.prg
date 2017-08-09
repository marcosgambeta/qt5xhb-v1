$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QMODELINDEX
REQUEST QRECT
#endif

CLASS QListView INHERIT QAbstractItemView

   METHOD new
   METHOD delete
   METHOD batchSize
   METHOD clearPropertyFlags
   METHOD flow
   METHOD gridSize
   METHOD isRowHidden
   METHOD isSelectionRectVisible
   METHOD isWrapping
   METHOD layoutMode
   METHOD modelColumn
   METHOD movement
   METHOD resizeMode
   METHOD setBatchSize
   METHOD setFlow
   METHOD setGridSize
   METHOD setLayoutMode
   METHOD setModelColumn
   METHOD setMovement
   METHOD setResizeMode
   METHOD setRowHidden
   METHOD setSelectionRectVisible
   METHOD setSpacing
   METHOD setUniformItemSizes
   METHOD setViewMode
   METHOD setWordWrap
   METHOD setWrapping
   METHOD spacing
   METHOD uniformItemSizes
   METHOD viewMode
   METHOD wordWrap
   METHOD indexAt
   METHOD scrollTo
   METHOD visualRect

   METHOD onIndexesMoved

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QListView ( QWidget * parent = 0 )
*/
$constructor=|new|QWidget *=0

$deleteMethod

/*
int batchSize () const
*/
$method=|int|batchSize|

/*
void clearPropertyFlags ()
*/
$method=|void|clearPropertyFlags|

/*
Flow flow () const
*/
$method=|QListView::Flow|flow|

/*
QSize gridSize () const
*/
$method=|QSize|gridSize|

/*
bool isRowHidden ( int row ) const
*/
$method=|bool|isRowHidden|int

/*
bool isSelectionRectVisible () const
*/
$method=|bool|isSelectionRectVisible|

/*
bool isWrapping () const
*/
$method=|bool|isWrapping|

/*
LayoutMode layoutMode () const
*/
$method=|QListView::LayoutMode|layoutMode|

/*
int modelColumn () const
*/
$method=|int|modelColumn|

/*
Movement movement () const
*/
$method=|QListView::Movement|movement|

/*
ResizeMode resizeMode () const
*/
$method=|QListView::ResizeMode|resizeMode|

/*
void setBatchSize ( int batchSize )
*/
$method=|void|setBatchSize|int

/*
void setFlow ( Flow flow )
*/
$method=|void|setFlow|QListView::Flow

/*
void setGridSize ( const QSize & size )
*/
$method=|void|setGridSize|const QSize &

/*
void setLayoutMode ( LayoutMode mode )
*/
$method=|void|setLayoutMode|QListView::LayoutMode

/*
void setModelColumn ( int column )
*/
$method=|void|setModelColumn|int

/*
void setMovement ( Movement movement )
*/
$method=|void|setMovement|QListView::Movement

/*
void setResizeMode ( ResizeMode mode )
*/
$method=|void|setResizeMode|QListView::ResizeMode

/*
void setRowHidden ( int row, bool hide )
*/
$method=|void|setRowHidden|int,bool

/*
void setSelectionRectVisible ( bool show )
*/
$method=|void|setSelectionRectVisible|bool

/*
void setSpacing ( int space )
*/
$method=|void|setSpacing|int

/*
void setUniformItemSizes ( bool enable )
*/
$method=|void|setUniformItemSizes|bool

/*
void setViewMode ( ViewMode mode )
*/
$method=|void|setViewMode|QListView::ViewMode

/*
void setWordWrap ( bool on )
*/
$method=|void|setWordWrap|bool

/*
void setWrapping ( bool enable )
*/
$method=|void|setWrapping|bool

/*
int spacing () const
*/
$method=|int|spacing|

/*
bool uniformItemSizes () const
*/
$method=|bool|uniformItemSizes|

/*
ViewMode viewMode () const
*/
$method=|QListView::ViewMode|viewMode|

/*
bool wordWrap () const
*/
$method=|bool|wordWrap|

/*
virtual QModelIndex indexAt ( const QPoint & p ) const
*/
$method=|QModelIndex|indexAt|const QPoint &

/*
virtual void scrollTo ( const QModelIndex & index, ScrollHint hint = EnsureVisible )
*/
$method=|void|scrollTo|const QModelIndex &,QListView::ScrollHint=QListView::EnsureVisible

/*
virtual QRect visualRect ( const QModelIndex & index ) const
*/
$method=|QRect|visualRect|const QModelIndex &

#pragma ENDDUMP
