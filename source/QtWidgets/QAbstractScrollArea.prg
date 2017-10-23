/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QWIDGET
REQUEST QSCROLLBAR
#endif

CLASS QAbstractScrollArea INHERIT QFrame

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD addScrollBarWidget
   METHOD horizontalScrollBarPolicy
   METHOD setHorizontalScrollBarPolicy
   METHOD maximumViewportSize
   METHOD scrollBarWidgets
   METHOD cornerWidget
   METHOD setCornerWidget
   METHOD horizontalScrollBar
   METHOD setHorizontalScrollBar
   METHOD setViewport
   METHOD verticalScrollBar
   METHOD setVerticalScrollBar
   METHOD verticalScrollBarPolicy
   METHOD setVerticalScrollBarPolicy
   METHOD viewport
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD setupViewport
   METHOD sizeAdjustPolicy
   METHOD setSizeAdjustPolicy

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractScrollArea
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAbstractScrollArea>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAbstractScrollArea>
#endif


HB_FUNC_STATIC( QABSTRACTSCROLLAREA_DELETE )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void addScrollBarWidget ( QWidget * widget, Qt::Alignment alignment )
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_ADDSCROLLBARWIDGET )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->addScrollBarWidget ( PQWIDGET(1), (Qt::Alignment) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Qt::ScrollBarPolicy horizontalScrollBarPolicy () const
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_HORIZONTALSCROLLBARPOLICY )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->horizontalScrollBarPolicy () );
  }
}

/*
void setHorizontalScrollBarPolicy ( Qt::ScrollBarPolicy )
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_SETHORIZONTALSCROLLBARPOLICY )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setHorizontalScrollBarPolicy ( (Qt::ScrollBarPolicy) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSize maximumViewportSize () const
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_MAXIMUMVIEWPORTSIZE )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->maximumViewportSize () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
QWidgetList scrollBarWidgets ( Qt::Alignment alignment )
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_SCROLLBARWIDGETS )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidgetList list = obj->scrollBarWidgets ( (Qt::Alignment) hb_parni(1) );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QWIDGET" );
    #else
    pDynSym = hb_dynsymFindName( "QWIDGET" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QWidget *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
QWidget * cornerWidget () const
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_CORNERWIDGET )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * ptr = obj->cornerWidget ();
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
void setCornerWidget ( QWidget * widget )
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_SETCORNERWIDGET )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCornerWidget ( PQWIDGET(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QScrollBar * horizontalScrollBar () const
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_HORIZONTALSCROLLBAR )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScrollBar * ptr = obj->horizontalScrollBar ();
    _qt5xhb_createReturnClass ( ptr, "QSCROLLBAR" );
  }
}

/*
void setHorizontalScrollBar ( QScrollBar * scrollBar )
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_SETHORIZONTALSCROLLBAR )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setHorizontalScrollBar ( PQSCROLLBAR(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setViewport ( QWidget * widget )
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_SETVIEWPORT )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setViewport ( PQWIDGET(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QScrollBar * verticalScrollBar () const
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_VERTICALSCROLLBAR )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QScrollBar * ptr = obj->verticalScrollBar ();
    _qt5xhb_createReturnClass ( ptr, "QSCROLLBAR" );
  }
}

/*
void setVerticalScrollBar ( QScrollBar * scrollBar )
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_SETVERTICALSCROLLBAR )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setVerticalScrollBar ( PQSCROLLBAR(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Qt::ScrollBarPolicy verticalScrollBarPolicy () const
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_VERTICALSCROLLBARPOLICY )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->verticalScrollBarPolicy () );
  }
}

/*
void setVerticalScrollBarPolicy ( Qt::ScrollBarPolicy )
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_SETVERTICALSCROLLBARPOLICY )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setVerticalScrollBarPolicy ( (Qt::ScrollBarPolicy) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QWidget * viewport () const
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_VIEWPORT )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * ptr = obj->viewport ();
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}


/*
QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_MINIMUMSIZEHINT )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
QSize sizeHint () const
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_SIZEHINT )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual void setupViewport(QWidget *viewport)
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_SETUPVIEWPORT )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setupViewport ( PQWIDGET(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
SizeAdjustPolicy sizeAdjustPolicy() const
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_SIZEADJUSTPOLICY )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->sizeAdjustPolicy () );
  }
}

/*
void setSizeAdjustPolicy(SizeAdjustPolicy policy)
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_SETSIZEADJUSTPOLICY )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSizeAdjustPolicy ( (QAbstractScrollArea::SizeAdjustPolicy) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
