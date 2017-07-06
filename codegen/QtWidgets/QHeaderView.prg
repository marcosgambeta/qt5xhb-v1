$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QSIZE
#endif

CLASS QHeaderView INHERIT QAbstractItemView

   DATA self_destruction INIT .F.

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
HB_FUNC_STATIC( QHEADERVIEW_NEW )
{
  QHeaderView * o = new QHeaderView ( (Qt::Orientation) hb_parni(1), OPQWIDGET(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

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
HB_FUNC_STATIC( QHEADERVIEW_DEFAULTALIGNMENT )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->defaultAlignment () );
  }
}

/*
void setDefaultAlignment ( Qt::Alignment alignment )
*/
HB_FUNC_STATIC( QHEADERVIEW_SETDEFAULTALIGNMENT )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDefaultAlignment ( (Qt::Alignment) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

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
void QHeaderView_logicalIndexAt1 ()
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      RINT( obj->logicalIndexAt ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int logicalIndexAt ( int x, int y ) const
*/
void QHeaderView_logicalIndexAt2 ()
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      RINT( obj->logicalIndexAt ( PINT(1), PINT(2) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int logicalIndexAt ( const QPoint & pos ) const
*/
void QHeaderView_logicalIndexAt3 ()
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->logicalIndexAt ( *PQPOINT(1) ) );
  }
}

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
HB_FUNC_STATIC( QHEADERVIEW_RESIZESECTIONS )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->resizeSections ( (QHeaderView::ResizeMode) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool restoreState ( const QByteArray & state )
*/
$method=|bool|restoreState|const QByteArray &

/*
QByteArray saveState () const
*/
HB_FUNC_STATIC( QHEADERVIEW_SAVESTATE )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->saveState () );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

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
HB_FUNC_STATIC( QHEADERVIEW_SETSORTINDICATOR )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      obj->setSortIndicator ( PINT(1), (Qt::SortOrder) hb_parni(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
  hb_itemReturn( hb_stackSelfItem() );
}

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
HB_FUNC_STATIC( QHEADERVIEW_SORTINDICATORORDER )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->sortIndicatorOrder () );
  }
}

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
HB_FUNC_STATIC( QHEADERVIEW_SIZEHINT )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

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
HB_FUNC_STATIC( QHEADERVIEW_SECTIONRESIZEMODE )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->sectionResizeMode ( PINT(1) ) );
  }
}

/*
void setSectionResizeMode(ResizeMode mode)
*/
void QHeaderView_setSectionResizeMode1 ()
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSectionResizeMode ( (QHeaderView::ResizeMode) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSectionResizeMode(int logicalIndex, ResizeMode mode)
*/
void QHeaderView_setSectionResizeMode2 ()
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSectionResizeMode ( PINT(1), (QHeaderView::ResizeMode) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

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
