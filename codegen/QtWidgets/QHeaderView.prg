$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QSIZE
#endif

CLASS QHeaderView INHERIT QAbstractItemView

   METHOD new
   METHOD delete
   METHOD cascadingSectionResizes
   METHOD setCascadingSectionResizes
   METHOD count
   METHOD defaultAlignment
   METHOD setDefaultAlignment
   METHOD defaultSectionSize
   METHOD setDefaultSectionSize
   METHOD hiddenSectionCount
   METHOD hideSection
   METHOD highlightSections
   METHOD setHighlightSections
   METHOD isSectionHidden
   METHOD isSortIndicatorShown
   METHOD setSortIndicatorShown
   METHOD length
   METHOD logicalIndex
   METHOD logicalIndexAt
   METHOD minimumSectionSize
   METHOD setMinimumSectionSize
   METHOD moveSection
   METHOD offset
   METHOD orientation
   METHOD resizeSection
   METHOD resizeSections
   METHOD restoreState
   METHOD saveState
   METHOD sectionPosition
   METHOD sectionSize
   METHOD sectionSizeHint
   METHOD sectionViewportPosition
   METHOD sectionsHidden
   METHOD sectionsMoved
   METHOD setSectionHidden
   METHOD setSortIndicator
   METHOD stretchLastSection
   METHOD setStretchLastSection
   METHOD showSection
   METHOD sortIndicatorOrder
   METHOD sortIndicatorSection
   METHOD stretchSectionCount
   METHOD swapSections
   METHOD visualIndex
   METHOD visualIndexAt
   METHOD reset
   METHOD setModel
   METHOD sizeHint
   METHOD headerDataChanged
   METHOD setOffset
   METHOD setOffsetToLastSection
   METHOD setOffsetToSectionPosition
   METHOD setVisible
   METHOD setSectionsMovable
   METHOD sectionsMovable
   METHOD setSectionsClickable
   METHOD sectionsClickable
   METHOD sectionResizeMode
   METHOD setSectionResizeMode
   METHOD setResizeContentsPrecision
   METHOD resizeContentsPrecision
   METHOD maximumSectionSize
   METHOD setMaximumSectionSize
   METHOD doItemsLayout

   METHOD onGeometriesChanged
   METHOD onSectionAutoResize
   METHOD onSectionClicked
   METHOD onSectionCountChanged
   METHOD onSectionDoubleClicked
   METHOD onSectionEntered
   METHOD onSectionHandleDoubleClicked
   METHOD onSectionMoved
   METHOD onSectionPressed
   METHOD onSectionResized
   METHOD onSortIndicatorChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
explicit QHeaderView ( Qt::Orientation orientation, QWidget * parent = 0 )
*/
$constructor=|new|Qt::Orientation,QWidget *=0

$deleteMethod

/*
bool cascadingSectionResizes () const
*/
$method=|bool|cascadingSectionResizes|

/*
void setCascadingSectionResizes ( bool enable )
*/
$method=|void|setCascadingSectionResizes|bool

/*
int count () const
*/
$method=|int|count|

/*
Qt::Alignment defaultAlignment () const
*/
$method=|Qt::Alignment|defaultAlignment|

/*
void setDefaultAlignment ( Qt::Alignment alignment )
*/
$method=|void|setDefaultAlignment|Qt::Alignment

/*
int defaultSectionSize () const
*/
$method=|int|defaultSectionSize|

/*
void setDefaultSectionSize ( int size )
*/
$method=|void|setDefaultSectionSize|int

/*
int hiddenSectionCount () const
*/
$method=|int|hiddenSectionCount|

/*
void hideSection ( int logicalIndex )
*/
$method=|void|hideSection|int

/*
bool highlightSections () const
*/
$method=|bool|highlightSections|

/*
void setHighlightSections ( bool highlight )
*/
$method=|void|setHighlightSections|bool

/*
bool isSectionHidden ( int logicalIndex ) const
*/
$method=|bool|isSectionHidden|int

/*
bool isSortIndicatorShown () const
*/
$method=|bool|isSortIndicatorShown|

/*
void setSortIndicatorShown ( bool show )
*/
$method=|void|setSortIndicatorShown|bool

/*
int length () const
*/
$method=|int|length|

/*
int logicalIndex ( int visualIndex ) const
*/
$method=|int|logicalIndex|int

/*
int logicalIndexAt ( int position ) const
*/
$internalMethod=|int|logicalIndexAt,logicalIndexAt1|int

/*
int logicalIndexAt ( int x, int y ) const
*/
$internalMethod=|int|logicalIndexAt,logicalIndexAt2|int,int

/*
int logicalIndexAt ( const QPoint & pos ) const
*/
$internalMethod=|int|logicalIndexAt,logicalIndexAt3|const QPoint &

//[1]int logicalIndexAt ( int position ) const
//[2]int logicalIndexAt ( int x, int y ) const
//[3]int logicalIndexAt ( const QPoint & pos ) const

HB_FUNC_STATIC( QHEADERVIEW_LOGICALINDEXAT )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QHeaderView_logicalIndexAt1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QHeaderView_logicalIndexAt2();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QHeaderView_logicalIndexAt3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int minimumSectionSize () const
*/
$method=|int|minimumSectionSize|

/*
void setMinimumSectionSize ( int size )
*/
$method=|void|setMinimumSectionSize|int

/*
void moveSection ( int from, int to )
*/
$method=|void|moveSection|int,int

/*
int offset () const
*/
$method=|int|offset|

/*
Qt::Orientation orientation () const
*/
$method=|Qt::Orientation|orientation|

/*
void resizeSection ( int logicalIndex, int size )
*/
$method=|void|resizeSection|int,int

/*
void resizeSections ( QHeaderView::ResizeMode mode )
*/
$method=|void|resizeSections|QHeaderView::ResizeMode

/*
bool restoreState ( const QByteArray & state )
*/
$method=|bool|restoreState|const QByteArray &

/*
QByteArray saveState () const
*/
$method=|QByteArray|saveState|

/*
int sectionPosition ( int logicalIndex ) const
*/
$method=|int|sectionPosition|int

/*
int sectionSize ( int logicalIndex ) const
*/
$method=|int|sectionSize|int

/*
int sectionSizeHint ( int logicalIndex ) const
*/
$method=|int|sectionSizeHint|int

/*
int sectionViewportPosition ( int logicalIndex ) const
*/
$method=|int|sectionViewportPosition|int

/*
bool sectionsHidden () const
*/
$method=|bool|sectionsHidden|

/*
bool sectionsMoved () const
*/
$method=|bool|sectionsMoved|

/*
void setSectionHidden ( int logicalIndex, bool hide )
*/
$method=|void|setSectionHidden|int,bool

/*
void setSortIndicator ( int logicalIndex, Qt::SortOrder order )
*/
$method=|void|setSortIndicator|int,Qt::SortOrder

/*
bool stretchLastSection () const
*/
$method=|bool|stretchLastSection|

/*
void setStretchLastSection ( bool stretch )
*/
$method=|void|setStretchLastSection|bool

/*
void showSection ( int logicalIndex )
*/
$method=|void|showSection|int

/*
Qt::SortOrder sortIndicatorOrder () const
*/
$method=|Qt::SortOrder|sortIndicatorOrder|

/*
int sortIndicatorSection () const
*/
$method=|int|sortIndicatorSection|

/*
int stretchSectionCount () const
*/
$method=|int|stretchSectionCount|

/*
void swapSections ( int first, int second )
*/
$method=|void|swapSections|int,int

/*
int visualIndex ( int logicalIndex ) const
*/
$method=|int|visualIndex|int

/*
int visualIndexAt ( int position ) const
*/
$method=|int|visualIndexAt|int

/*
void reset ()
*/
$method=|void|reset|

/*
void setModel ( QAbstractItemModel * model )
*/
$method=|void|setModel|QAbstractItemModel *

/*
QSize sizeHint () const
*/
$method=|QSize|sizeHint|

/*
void headerDataChanged ( Qt::Orientation orientation, int logicalFirst, int logicalLast )
*/
$method=|void|headerDataChanged|Qt::Orientation,int,int

/*
void setOffset ( int offset )
*/
$method=|void|setOffset|int

/*
void setOffsetToLastSection ()
*/
$method=|void|setOffsetToLastSection|

/*
void setOffsetToSectionPosition ( int visualIndex )
*/
$method=|void|setOffsetToSectionPosition|int

/*
void setVisible(bool v)
*/
$method=|void|setVisible|bool

/*
void setSectionsMovable (bool movable)
*/
$method=|void|setSectionsMovable|bool

/*
bool sectionsMovable() const
*/
$method=|bool|sectionsMovable|

/*
void setSectionsClickable(bool clickable)
*/
$method=|void|setSectionsClickable|bool

/*
bool sectionsClickable() const
*/
$method=|bool|sectionsClickable|

/*
ResizeMode sectionResizeMode(int logicalIndex) const
*/
$method=|QHeaderView::ResizeMode|sectionResizeMode|int

/*
void setSectionResizeMode(ResizeMode mode)
*/
$internalMethod=|void|setSectionResizeMode,setSectionResizeMode1|QHeaderView::ResizeMode

/*
void setSectionResizeMode(int logicalIndex, ResizeMode mode)
*/
$internalMethod=|void|setSectionResizeMode,setSectionResizeMode2|int,QHeaderView::ResizeMode

//[1]void setSectionResizeMode(ResizeMode mode)
//[2]void setSectionResizeMode(int logicalIndex, ResizeMode mode)

HB_FUNC_STATIC( QHEADERVIEW_SETSECTIONRESIZEMODE )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QHeaderView_setSectionResizeMode1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QHeaderView_setSectionResizeMode2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setResizeContentsPrecision(int precision)
*/
$method=|void|setResizeContentsPrecision|int

/*
int resizeContentsPrecision() const
*/
$method=|int|resizeContentsPrecision|

/*
int maximumSectionSize() const
*/
$method=|int|maximumSectionSize|

/*
void setMaximumSectionSize(int size)
*/
$method=|void|setMaximumSectionSize|int

/*
void doItemsLayout()
*/
$method=|void|doItemsLayout|

#pragma ENDDUMP
