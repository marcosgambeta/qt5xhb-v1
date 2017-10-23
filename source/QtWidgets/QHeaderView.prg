/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

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

PROCEDURE destroyObject () CLASS QHeaderView
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QHeaderView>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QHeaderView>
#endif

/*
explicit QHeaderView ( Qt::Orientation orientation, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QHEADERVIEW_NEW )
{
  QHeaderView * o = new QHeaderView ( (Qt::Orientation) hb_parni(1), OPQWIDGET(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QHEADERVIEW_DELETE )
{
  QHeaderView * obj = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool cascadingSectionResizes () const
*/
HB_FUNC_STATIC( QHEADERVIEW_CASCADINGSECTIONRESIZES )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->cascadingSectionResizes () );
  }
}

/*
void setCascadingSectionResizes ( bool enable )
*/
HB_FUNC_STATIC( QHEADERVIEW_SETCASCADINGSECTIONRESIZES )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setCascadingSectionResizes ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}


/*
int count () const
*/
HB_FUNC_STATIC( QHEADERVIEW_COUNT )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->count () );
  }
}


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
HB_FUNC_STATIC( QHEADERVIEW_DEFAULTSECTIONSIZE )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->defaultSectionSize () );
  }
}

/*
void setDefaultSectionSize ( int size )
*/
HB_FUNC_STATIC( QHEADERVIEW_SETDEFAULTSECTIONSIZE )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setDefaultSectionSize ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int hiddenSectionCount () const
*/
HB_FUNC_STATIC( QHEADERVIEW_HIDDENSECTIONCOUNT )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->hiddenSectionCount () );
  }
}


/*
void hideSection ( int logicalIndex )
*/
HB_FUNC_STATIC( QHEADERVIEW_HIDESECTION )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->hideSection ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool highlightSections () const
*/
HB_FUNC_STATIC( QHEADERVIEW_HIGHLIGHTSECTIONS )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->highlightSections () );
  }
}

/*
void setHighlightSections ( bool highlight )
*/
HB_FUNC_STATIC( QHEADERVIEW_SETHIGHLIGHTSECTIONS )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setHighlightSections ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}




/*
bool isSectionHidden ( int logicalIndex ) const
*/
HB_FUNC_STATIC( QHEADERVIEW_ISSECTIONHIDDEN )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      RBOOL( obj->isSectionHidden ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}


/*
bool isSortIndicatorShown () const
*/
HB_FUNC_STATIC( QHEADERVIEW_ISSORTINDICATORSHOWN )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isSortIndicatorShown () );
  }
}

/*
void setSortIndicatorShown ( bool show )
*/
HB_FUNC_STATIC( QHEADERVIEW_SETSORTINDICATORSHOWN )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setSortIndicatorShown ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}


/*
int length () const
*/
HB_FUNC_STATIC( QHEADERVIEW_LENGTH )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->length () );
  }
}


/*
int logicalIndex ( int visualIndex ) const
*/
HB_FUNC_STATIC( QHEADERVIEW_LOGICALINDEX )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      RINT( obj->logicalIndex ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}


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
HB_FUNC_STATIC( QHEADERVIEW_MINIMUMSECTIONSIZE )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->minimumSectionSize () );
  }
}

/*
void setMinimumSectionSize ( int size )
*/
HB_FUNC_STATIC( QHEADERVIEW_SETMINIMUMSECTIONSIZE )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setMinimumSectionSize ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void moveSection ( int from, int to )
*/
HB_FUNC_STATIC( QHEADERVIEW_MOVESECTION )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      obj->moveSection ( PINT(1), PINT(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int offset () const
*/
HB_FUNC_STATIC( QHEADERVIEW_OFFSET )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->offset () );
  }
}


/*
Qt::Orientation orientation () const
*/
HB_FUNC_STATIC( QHEADERVIEW_ORIENTATION )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->orientation () );
  }
}



/*
void resizeSection ( int logicalIndex, int size )
*/
HB_FUNC_STATIC( QHEADERVIEW_RESIZESECTION )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      obj->resizeSection ( PINT(1), PINT(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
  hb_itemReturn( hb_stackSelfItem() );
}


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
HB_FUNC_STATIC( QHEADERVIEW_RESTORESTATE )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->restoreState ( *PQBYTEARRAY(1) ) );
  }
}


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
HB_FUNC_STATIC( QHEADERVIEW_SECTIONPOSITION )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      RINT( obj->sectionPosition ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}


/*
int sectionSize ( int logicalIndex ) const
*/
HB_FUNC_STATIC( QHEADERVIEW_SECTIONSIZE )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      RINT( obj->sectionSize ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}


/*
int sectionSizeHint ( int logicalIndex ) const
*/
HB_FUNC_STATIC( QHEADERVIEW_SECTIONSIZEHINT )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      RINT( obj->sectionSizeHint ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}


/*
int sectionViewportPosition ( int logicalIndex ) const
*/
HB_FUNC_STATIC( QHEADERVIEW_SECTIONVIEWPORTPOSITION )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      RINT( obj->sectionViewportPosition ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}


/*
bool sectionsHidden () const
*/
HB_FUNC_STATIC( QHEADERVIEW_SECTIONSHIDDEN )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->sectionsHidden () );
  }
}


/*
bool sectionsMoved () const
*/
HB_FUNC_STATIC( QHEADERVIEW_SECTIONSMOVED )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->sectionsMoved () );
  }
}






/*
void setSectionHidden ( int logicalIndex, bool hide )
*/
HB_FUNC_STATIC( QHEADERVIEW_SETSECTIONHIDDEN )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) && ISLOG(2) )
    {
      obj->setSectionHidden ( PINT(1), PBOOL(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
  hb_itemReturn( hb_stackSelfItem() );
}


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
HB_FUNC_STATIC( QHEADERVIEW_STRETCHLASTSECTION )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->stretchLastSection () );
  }
}

/*
void setStretchLastSection ( bool stretch )
*/
HB_FUNC_STATIC( QHEADERVIEW_SETSTRETCHLASTSECTION )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setStretchLastSection ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}


/*
void showSection ( int logicalIndex )
*/
HB_FUNC_STATIC( QHEADERVIEW_SHOWSECTION )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->showSection ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
  hb_itemReturn( hb_stackSelfItem() );
}


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
HB_FUNC_STATIC( QHEADERVIEW_SORTINDICATORSECTION )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->sortIndicatorSection () );
  }
}



/*
int stretchSectionCount () const
*/
HB_FUNC_STATIC( QHEADERVIEW_STRETCHSECTIONCOUNT )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->stretchSectionCount () );
  }
}


/*
void swapSections ( int first, int second )
*/
HB_FUNC_STATIC( QHEADERVIEW_SWAPSECTIONS )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      obj->swapSections ( PINT(1), PINT(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int visualIndex ( int logicalIndex ) const
*/
HB_FUNC_STATIC( QHEADERVIEW_VISUALINDEX )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      RINT( obj->visualIndex ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}


/*
int visualIndexAt ( int position ) const
*/
HB_FUNC_STATIC( QHEADERVIEW_VISUALINDEXAT )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      RINT( obj->visualIndexAt ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}


/*
void reset ()
*/
HB_FUNC_STATIC( QHEADERVIEW_RESET )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->reset ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setModel ( QAbstractItemModel * model )
*/
HB_FUNC_STATIC( QHEADERVIEW_SETMODEL )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setModel ( PQABSTRACTITEMMODEL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


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
HB_FUNC_STATIC( QHEADERVIEW_HEADERDATACHANGED )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->headerDataChanged ( (Qt::Orientation) hb_parni(1), PINT(2), PINT(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOffset ( int offset )
*/
HB_FUNC_STATIC( QHEADERVIEW_SETOFFSET )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setOffset ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOffsetToLastSection ()
*/
HB_FUNC_STATIC( QHEADERVIEW_SETOFFSETTOLASTSECTION )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setOffsetToLastSection ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOffsetToSectionPosition ( int visualIndex )
*/
HB_FUNC_STATIC( QHEADERVIEW_SETOFFSETTOSECTIONPOSITION )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setOffsetToSectionPosition ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setVisible(bool v)
*/
HB_FUNC_STATIC( QHEADERVIEW_SETVISIBLE )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setVisible ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSectionsMovable (bool movable)
*/
HB_FUNC_STATIC( QHEADERVIEW_SETSECTIONSMOVABLE )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSectionsMovable ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool sectionsMovable() const
*/
HB_FUNC_STATIC( QHEADERVIEW_SECTIONSMOVABLE )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->sectionsMovable () );
  }
}


/*
void setSectionsClickable(bool clickable)
*/
HB_FUNC_STATIC( QHEADERVIEW_SETSECTIONSCLICKABLE )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSectionsClickable ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool sectionsClickable() const
*/
HB_FUNC_STATIC( QHEADERVIEW_SECTIONSCLICKABLE )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->sectionsClickable () );
  }
}


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
HB_FUNC_STATIC( QHEADERVIEW_SETRESIZECONTENTSPRECISION )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setResizeContentsPrecision ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int resizeContentsPrecision() const
*/
HB_FUNC_STATIC( QHEADERVIEW_RESIZECONTENTSPRECISION )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->resizeContentsPrecision () );
  }
}


/*
int maximumSectionSize() const
*/
HB_FUNC_STATIC( QHEADERVIEW_MAXIMUMSECTIONSIZE )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->maximumSectionSize () );
  }
}

/*
void setMaximumSectionSize(int size)
*/
HB_FUNC_STATIC( QHEADERVIEW_SETMAXIMUMSECTIONSIZE )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMaximumSectionSize ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void doItemsLayout()
*/
HB_FUNC_STATIC( QHEADERVIEW_DOITEMSLAYOUT )
{
  QHeaderView * obj = (QHeaderView *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->doItemsLayout ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP
