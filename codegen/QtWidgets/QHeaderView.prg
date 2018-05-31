%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractItemView

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

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QHeaderView ( Qt::Orientation orientation, QWidget * parent = 0 )
$constructor=|new|Qt::Orientation,QWidget *=0

$deleteMethod

$prototype=bool cascadingSectionResizes () const
$method=|bool|cascadingSectionResizes|

$prototype=void setCascadingSectionResizes ( bool enable )
$method=|void|setCascadingSectionResizes|bool

$prototype=int count () const
$method=|int|count|

$prototype=Qt::Alignment defaultAlignment () const
$method=|Qt::Alignment|defaultAlignment|

$prototype=void setDefaultAlignment ( Qt::Alignment alignment )
$method=|void|setDefaultAlignment|Qt::Alignment

$prototype=int defaultSectionSize () const
$method=|int|defaultSectionSize|

$prototype=void setDefaultSectionSize ( int size )
$method=|void|setDefaultSectionSize|int

$prototype=int hiddenSectionCount () const
$method=|int|hiddenSectionCount|

$prototype=void hideSection ( int logicalIndex )
$method=|void|hideSection|int

$prototype=bool highlightSections () const
$method=|bool|highlightSections|

$prototype=void setHighlightSections ( bool highlight )
$method=|void|setHighlightSections|bool

$prototype=bool isSectionHidden ( int logicalIndex ) const
$method=|bool|isSectionHidden|int

$prototype=bool isSortIndicatorShown () const
$method=|bool|isSortIndicatorShown|

$prototype=void setSortIndicatorShown ( bool show )
$method=|void|setSortIndicatorShown|bool

$prototype=int length () const
$method=|int|length|

$prototype=int logicalIndex ( int visualIndex ) const
$method=|int|logicalIndex|int

$prototype=int logicalIndexAt ( int position ) const
$internalMethod=|int|logicalIndexAt,logicalIndexAt1|int

$prototype=int logicalIndexAt ( int x, int y ) const
$internalMethod=|int|logicalIndexAt,logicalIndexAt2|int,int

$prototype=int logicalIndexAt ( const QPoint & pos ) const
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

$prototype=int minimumSectionSize () const
$method=|int|minimumSectionSize|

$prototype=void setMinimumSectionSize ( int size )
$method=|void|setMinimumSectionSize|int

$prototype=void moveSection ( int from, int to )
$method=|void|moveSection|int,int

$prototype=int offset () const
$method=|int|offset|

$prototype=Qt::Orientation orientation () const
$method=|Qt::Orientation|orientation|

$prototype=void resizeSection ( int logicalIndex, int size )
$method=|void|resizeSection|int,int

$prototype=void resizeSections ( QHeaderView::ResizeMode mode )
$method=|void|resizeSections|QHeaderView::ResizeMode

$prototype=bool restoreState ( const QByteArray & state )
$method=|bool|restoreState|const QByteArray &

$prototype=QByteArray saveState () const
$method=|QByteArray|saveState|

$prototype=int sectionPosition ( int logicalIndex ) const
$method=|int|sectionPosition|int

$prototype=int sectionSize ( int logicalIndex ) const
$method=|int|sectionSize|int

$prototype=int sectionSizeHint ( int logicalIndex ) const
$method=|int|sectionSizeHint|int

$prototype=int sectionViewportPosition ( int logicalIndex ) const
$method=|int|sectionViewportPosition|int

$prototype=bool sectionsHidden () const
$method=|bool|sectionsHidden|

$prototype=bool sectionsMoved () const
$method=|bool|sectionsMoved|

$prototype=void setSectionHidden ( int logicalIndex, bool hide )
$method=|void|setSectionHidden|int,bool

$prototype=void setSortIndicator ( int logicalIndex, Qt::SortOrder order )
$method=|void|setSortIndicator|int,Qt::SortOrder

$prototype=bool stretchLastSection () const
$method=|bool|stretchLastSection|

$prototype=void setStretchLastSection ( bool stretch )
$method=|void|setStretchLastSection|bool

$prototype=void showSection ( int logicalIndex )
$method=|void|showSection|int

$prototype=Qt::SortOrder sortIndicatorOrder () const
$method=|Qt::SortOrder|sortIndicatorOrder|

$prototype=int sortIndicatorSection () const
$method=|int|sortIndicatorSection|

$prototype=int stretchSectionCount () const
$method=|int|stretchSectionCount|

$prototype=void swapSections ( int first, int second )
$method=|void|swapSections|int,int

$prototype=int visualIndex ( int logicalIndex ) const
$method=|int|visualIndex|int

$prototype=int visualIndexAt ( int position ) const
$method=|int|visualIndexAt|int

$prototype=void reset ()
$method=|void|reset|

$prototype=void setModel ( QAbstractItemModel * model )
$method=|void|setModel|QAbstractItemModel *

$prototype=QSize sizeHint () const
$method=|QSize|sizeHint|

$prototype=void headerDataChanged ( Qt::Orientation orientation, int logicalFirst, int logicalLast )
$method=|void|headerDataChanged|Qt::Orientation,int,int

$prototype=void setOffset ( int offset )
$method=|void|setOffset|int

$prototype=void setOffsetToLastSection ()
$method=|void|setOffsetToLastSection|

$prototype=void setOffsetToSectionPosition ( int visualIndex )
$method=|void|setOffsetToSectionPosition|int

$prototype=void setVisible(bool v)
$method=|void|setVisible|bool

$prototype=void setSectionsMovable (bool movable)
$method=|void|setSectionsMovable|bool

$prototype=bool sectionsMovable() const
$method=|bool|sectionsMovable|

$prototype=void setSectionsClickable(bool clickable)
$method=|void|setSectionsClickable|bool

$prototype=bool sectionsClickable() const
$method=|bool|sectionsClickable|

$prototype=ResizeMode sectionResizeMode(int logicalIndex) const
$method=|QHeaderView::ResizeMode|sectionResizeMode|int

$prototype=void setSectionResizeMode(ResizeMode mode)
$internalMethod=|void|setSectionResizeMode,setSectionResizeMode1|QHeaderView::ResizeMode

$prototype=void setSectionResizeMode(int logicalIndex, ResizeMode mode)
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

$prototype=void setResizeContentsPrecision(int precision)
$method=|void|setResizeContentsPrecision|int

$prototype=int resizeContentsPrecision() const
$method=|int|resizeContentsPrecision|

$prototype=int maximumSectionSize() const
$method=|int|maximumSectionSize|

$prototype=void setMaximumSectionSize(int size)
$method=|void|setMaximumSectionSize|int

$prototype=void doItemsLayout()
$method=|void|doItemsLayout|

$beginSignals
$signal=|geometriesChanged()
$signal=|sectionAutoResize(int,QHeaderView::ResizeMode)
$signal=|sectionClicked(int)
$signal=|sectionCountChanged(int,int)
$signal=|sectionDoubleClicked(int)
$signal=|sectionEntered(int)
$signal=|sectionHandleDoubleClicked(int)
$signal=|sectionMoved(int,int,int)
$signal=|sectionPressed(int)
$signal=|sectionResized(int,int,int)
$signal=|sortIndicatorChanged(int,Qt::SortOrder)
$endSignals

#pragma ENDDUMP
