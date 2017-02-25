/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QSIZE
#endif

CLASS QHeaderView INHERIT QAbstractItemView

   DATA class_id INIT Class_Id_QHeaderView
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

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
   METHOD logicalIndexAt1
   METHOD logicalIndexAt2
   METHOD logicalIndexAt3
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
   METHOD setSectionResizeMode1
   METHOD setSectionResizeMode2
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QHeaderView>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QHeaderView>
#endif
#endif

/*
explicit QHeaderView ( Qt::Orientation orientation, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QHEADERVIEW_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  int par1 = hb_parni(1);
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) _qtxhb_itemGetPtr(2);
  QHeaderView * o = new QHeaderView (  (Qt::Orientation) par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QHeaderView *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QHEADERVIEW_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
bool cascadingSectionResizes () const
*/
HB_FUNC_STATIC( QHEADERVIEW_CASCADINGSECTIONRESIZES )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->cascadingSectionResizes (  ) );
  }
}

/*
void setCascadingSectionResizes ( bool enable )
*/
HB_FUNC_STATIC( QHEADERVIEW_SETCASCADINGSECTIONRESIZES )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCascadingSectionResizes ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int count () const
*/
HB_FUNC_STATIC( QHEADERVIEW_COUNT )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->count (  ) );
  }
}


/*
Qt::Alignment defaultAlignment () const
*/
HB_FUNC_STATIC( QHEADERVIEW_DEFAULTALIGNMENT )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->defaultAlignment (  ) );
  }
}

/*
void setDefaultAlignment ( Qt::Alignment alignment )
*/
HB_FUNC_STATIC( QHEADERVIEW_SETDEFAULTALIGNMENT )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setDefaultAlignment (  (Qt::Alignment) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int defaultSectionSize () const
*/
HB_FUNC_STATIC( QHEADERVIEW_DEFAULTSECTIONSIZE )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->defaultSectionSize (  ) );
  }
}

/*
void setDefaultSectionSize ( int size )
*/
HB_FUNC_STATIC( QHEADERVIEW_SETDEFAULTSECTIONSIZE )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDefaultSectionSize ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int hiddenSectionCount () const
*/
HB_FUNC_STATIC( QHEADERVIEW_HIDDENSECTIONCOUNT )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->hiddenSectionCount (  ) );
  }
}


/*
void hideSection ( int logicalIndex )
*/
HB_FUNC_STATIC( QHEADERVIEW_HIDESECTION )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->hideSection ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool highlightSections () const
*/
HB_FUNC_STATIC( QHEADERVIEW_HIGHLIGHTSECTIONS )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->highlightSections (  ) );
  }
}

/*
void setHighlightSections ( bool highlight )
*/
HB_FUNC_STATIC( QHEADERVIEW_SETHIGHLIGHTSECTIONS )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setHighlightSections ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




/*
bool isSectionHidden ( int logicalIndex ) const
*/
HB_FUNC_STATIC( QHEADERVIEW_ISSECTIONHIDDEN )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isSectionHidden ( (int) hb_parni(1) ) );
  }
}


/*
bool isSortIndicatorShown () const
*/
HB_FUNC_STATIC( QHEADERVIEW_ISSORTINDICATORSHOWN )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isSortIndicatorShown (  ) );
  }
}

/*
void setSortIndicatorShown ( bool show )
*/
HB_FUNC_STATIC( QHEADERVIEW_SETSORTINDICATORSHOWN )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSortIndicatorShown ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int length () const
*/
HB_FUNC_STATIC( QHEADERVIEW_LENGTH )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->length (  ) );
  }
}


/*
int logicalIndex ( int visualIndex ) const
*/
HB_FUNC_STATIC( QHEADERVIEW_LOGICALINDEX )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->logicalIndex ( (int) hb_parni(1) ) );
  }
}


/*
int logicalIndexAt ( int position ) const
*/
HB_FUNC_STATIC( QHEADERVIEW_LOGICALINDEXAT1 )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->logicalIndexAt ( (int) hb_parni(1) ) );
  }
}

/*
int logicalIndexAt ( int x, int y ) const
*/
HB_FUNC_STATIC( QHEADERVIEW_LOGICALINDEXAT2 )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->logicalIndexAt ( (int) hb_parni(1), (int) hb_parni(2) ) );
  }
}

/*
int logicalIndexAt ( const QPoint & pos ) const
*/
HB_FUNC_STATIC( QHEADERVIEW_LOGICALINDEXAT3 )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * par1 = (QPoint *) _qtxhb_itemGetPtr(1);
    hb_retni( obj->logicalIndexAt ( *par1 ) );
  }
}


//[1]int logicalIndexAt ( int position ) const
//[2]int logicalIndexAt ( int x, int y ) const
//[3]int logicalIndexAt ( const QPoint & pos ) const

HB_FUNC_STATIC( QHEADERVIEW_LOGICALINDEXAT )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QHEADERVIEW_LOGICALINDEXAT1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QHEADERVIEW_LOGICALINDEXAT2 );
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QHEADERVIEW_LOGICALINDEXAT3 );
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
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->minimumSectionSize (  ) );
  }
}

/*
void setMinimumSectionSize ( int size )
*/
HB_FUNC_STATIC( QHEADERVIEW_SETMINIMUMSECTIONSIZE )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMinimumSectionSize ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void moveSection ( int from, int to )
*/
HB_FUNC_STATIC( QHEADERVIEW_MOVESECTION )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->moveSection ( (int) hb_parni(1), (int) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int offset () const
*/
HB_FUNC_STATIC( QHEADERVIEW_OFFSET )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->offset (  ) );
  }
}


/*
Qt::Orientation orientation () const
*/
HB_FUNC_STATIC( QHEADERVIEW_ORIENTATION )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->orientation (  ) );
  }
}



/*
void resizeSection ( int logicalIndex, int size )
*/
HB_FUNC_STATIC( QHEADERVIEW_RESIZESECTION )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->resizeSection ( (int) hb_parni(1), (int) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void resizeSections ( QHeaderView::ResizeMode mode )
*/
HB_FUNC_STATIC( QHEADERVIEW_RESIZESECTIONS )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->resizeSections (  (QHeaderView::ResizeMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool restoreState ( const QByteArray & state )
*/
HB_FUNC_STATIC( QHEADERVIEW_RESTORESTATE )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->restoreState ( *par1 ) );
  }
}


/*
QByteArray saveState () const
*/
HB_FUNC_STATIC( QHEADERVIEW_SAVESTATE )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->saveState (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
int sectionPosition ( int logicalIndex ) const
*/
HB_FUNC_STATIC( QHEADERVIEW_SECTIONPOSITION )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->sectionPosition ( (int) hb_parni(1) ) );
  }
}


/*
int sectionSize ( int logicalIndex ) const
*/
HB_FUNC_STATIC( QHEADERVIEW_SECTIONSIZE )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->sectionSize ( (int) hb_parni(1) ) );
  }
}


/*
int sectionSizeHint ( int logicalIndex ) const
*/
HB_FUNC_STATIC( QHEADERVIEW_SECTIONSIZEHINT )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->sectionSizeHint ( (int) hb_parni(1) ) );
  }
}


/*
int sectionViewportPosition ( int logicalIndex ) const
*/
HB_FUNC_STATIC( QHEADERVIEW_SECTIONVIEWPORTPOSITION )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->sectionViewportPosition ( (int) hb_parni(1) ) );
  }
}


/*
bool sectionsHidden () const
*/
HB_FUNC_STATIC( QHEADERVIEW_SECTIONSHIDDEN )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->sectionsHidden (  ) );
  }
}


/*
bool sectionsMoved () const
*/
HB_FUNC_STATIC( QHEADERVIEW_SECTIONSMOVED )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->sectionsMoved (  ) );
  }
}






/*
void setSectionHidden ( int logicalIndex, bool hide )
*/
HB_FUNC_STATIC( QHEADERVIEW_SETSECTIONHIDDEN )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSectionHidden ( (int) hb_parni(1), (bool) hb_parl(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSortIndicator ( int logicalIndex, Qt::SortOrder order )
*/
HB_FUNC_STATIC( QHEADERVIEW_SETSORTINDICATOR )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = hb_parni(2);
    obj->setSortIndicator ( (int) hb_parni(1),  (Qt::SortOrder) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool stretchLastSection () const
*/
HB_FUNC_STATIC( QHEADERVIEW_STRETCHLASTSECTION )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->stretchLastSection (  ) );
  }
}

/*
void setStretchLastSection ( bool stretch )
*/
HB_FUNC_STATIC( QHEADERVIEW_SETSTRETCHLASTSECTION )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setStretchLastSection ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void showSection ( int logicalIndex )
*/
HB_FUNC_STATIC( QHEADERVIEW_SHOWSECTION )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->showSection ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Qt::SortOrder sortIndicatorOrder () const
*/
HB_FUNC_STATIC( QHEADERVIEW_SORTINDICATORORDER )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->sortIndicatorOrder (  ) );
  }
}


/*
int sortIndicatorSection () const
*/
HB_FUNC_STATIC( QHEADERVIEW_SORTINDICATORSECTION )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->sortIndicatorSection (  ) );
  }
}



/*
int stretchSectionCount () const
*/
HB_FUNC_STATIC( QHEADERVIEW_STRETCHSECTIONCOUNT )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->stretchSectionCount (  ) );
  }
}


/*
void swapSections ( int first, int second )
*/
HB_FUNC_STATIC( QHEADERVIEW_SWAPSECTIONS )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->swapSections ( (int) hb_parni(1), (int) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int visualIndex ( int logicalIndex ) const
*/
HB_FUNC_STATIC( QHEADERVIEW_VISUALINDEX )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->visualIndex ( (int) hb_parni(1) ) );
  }
}


/*
int visualIndexAt ( int position ) const
*/
HB_FUNC_STATIC( QHEADERVIEW_VISUALINDEXAT )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->visualIndexAt ( (int) hb_parni(1) ) );
  }
}


/*
void reset ()
*/
HB_FUNC_STATIC( QHEADERVIEW_RESET )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->reset (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setModel ( QAbstractItemModel * model )
*/
HB_FUNC_STATIC( QHEADERVIEW_SETMODEL )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractItemModel * par1 = (QAbstractItemModel *) _qtxhb_itemGetPtr(1);
    obj->setModel ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSize sizeHint () const
*/
HB_FUNC_STATIC( QHEADERVIEW_SIZEHINT )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
void headerDataChanged ( Qt::Orientation orientation, int logicalFirst, int logicalLast )
*/
HB_FUNC_STATIC( QHEADERVIEW_HEADERDATACHANGED )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->headerDataChanged (  (Qt::Orientation) par1, (int) hb_parni(2), (int) hb_parni(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOffset ( int offset )
*/
HB_FUNC_STATIC( QHEADERVIEW_SETOFFSET )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setOffset ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOffsetToLastSection ()
*/
HB_FUNC_STATIC( QHEADERVIEW_SETOFFSETTOLASTSECTION )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setOffsetToLastSection (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOffsetToSectionPosition ( int visualIndex )
*/
HB_FUNC_STATIC( QHEADERVIEW_SETOFFSETTOSECTIONPOSITION )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setOffsetToSectionPosition ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setVisible(bool v)
*/
HB_FUNC_STATIC( QHEADERVIEW_SETVISIBLE )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setVisible ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSectionsMovable (bool movable)
*/
HB_FUNC_STATIC( QHEADERVIEW_SETSECTIONSMOVABLE )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSectionsMovable ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool sectionsMovable() const
*/
HB_FUNC_STATIC( QHEADERVIEW_SECTIONSMOVABLE )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->sectionsMovable (  ) );
  }
}


/*
void setSectionsClickable(bool clickable)
*/
HB_FUNC_STATIC( QHEADERVIEW_SETSECTIONSCLICKABLE )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSectionsClickable ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool sectionsClickable() const
*/
HB_FUNC_STATIC( QHEADERVIEW_SECTIONSCLICKABLE )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->sectionsClickable (  ) );
  }
}


/*
ResizeMode sectionResizeMode(int logicalIndex) const
*/
HB_FUNC_STATIC( QHEADERVIEW_SECTIONRESIZEMODE )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->sectionResizeMode ( (int) hb_parni(1) ) );
  }
}


/*
void setSectionResizeMode(ResizeMode mode)
*/
HB_FUNC_STATIC( QHEADERVIEW_SETSECTIONRESIZEMODE1 )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setSectionResizeMode (  (QHeaderView::ResizeMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSectionResizeMode(int logicalIndex, ResizeMode mode)
*/
HB_FUNC_STATIC( QHEADERVIEW_SETSECTIONRESIZEMODE2 )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = hb_parni(2);
    obj->setSectionResizeMode ( (int) hb_parni(1),  (QHeaderView::ResizeMode) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setSectionResizeMode(ResizeMode mode)
//[2]void setSectionResizeMode(int logicalIndex, ResizeMode mode)

HB_FUNC_STATIC( QHEADERVIEW_SETSECTIONRESIZEMODE )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QHEADERVIEW_SETSECTIONRESIZEMODE1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QHEADERVIEW_SETSECTIONRESIZEMODE2 );
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
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setResizeContentsPrecision ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int resizeContentsPrecision() const
*/
HB_FUNC_STATIC( QHEADERVIEW_RESIZECONTENTSPRECISION )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->resizeContentsPrecision (  ) );
  }
}


/*
int maximumSectionSize() const
*/
HB_FUNC_STATIC( QHEADERVIEW_MAXIMUMSECTIONSIZE )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->maximumSectionSize (  ) );
  }
}

/*
void setMaximumSectionSize(int size)
*/
HB_FUNC_STATIC( QHEADERVIEW_SETMAXIMUMSECTIONSIZE )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMaximumSectionSize ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void doItemsLayout()
*/
HB_FUNC_STATIC( QHEADERVIEW_DOITEMSLAYOUT )
{
  QHeaderView * obj = (QHeaderView *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->doItemsLayout (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP
