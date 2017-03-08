/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QWIDGET
REQUEST QSCROLLBAR
#endif

CLASS QAbstractScrollArea INHERIT QFrame

   DATA class_id INIT Class_Id_QAbstractScrollArea
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

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

#include "qt5xhb_clsid.h"
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
    QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
    int par2 = hb_parni(2);
    obj->addScrollBarWidget ( par1,  (Qt::Alignment) par2 );
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
    hb_retni( obj->horizontalScrollBarPolicy (  ) );
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
    int par1 = hb_parni(1);
    obj->setHorizontalScrollBarPolicy (  (Qt::ScrollBarPolicy) par1 );
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
    QSize * ptr = new QSize( obj->maximumViewportSize (  ) );
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
    int par1 = hb_parni(1);
    QWidgetList list = obj->scrollBarWidgets (  (Qt::Alignment) par1 );
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
    QWidget * ptr = obj->cornerWidget (  );
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
    QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
    obj->setCornerWidget ( par1 );
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
    QScrollBar * ptr = obj->horizontalScrollBar (  );
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
    QScrollBar * par1 = (QScrollBar *) _qt5xhb_itemGetPtr(1);
    obj->setHorizontalScrollBar ( par1 );
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
    QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
    obj->setViewport ( par1 );
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
    QScrollBar * ptr = obj->verticalScrollBar (  );
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
    QScrollBar * par1 = (QScrollBar *) _qt5xhb_itemGetPtr(1);
    obj->setVerticalScrollBar ( par1 );
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
    hb_retni( obj->verticalScrollBarPolicy (  ) );
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
    int par1 = hb_parni(1);
    obj->setVerticalScrollBarPolicy (  (Qt::ScrollBarPolicy) par1 );
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
    QWidget * ptr = obj->viewport (  );
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
    QSize * ptr = new QSize( obj->minimumSizeHint (  ) );
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
    QSize * ptr = new QSize( obj->sizeHint (  ) );
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
    QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
    obj->setupViewport ( par1 );
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
    hb_retni( obj->sizeAdjustPolicy (  ) );
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
    int par1 = hb_parni(1);
    obj->setSizeAdjustPolicy (  (QAbstractScrollArea::SizeAdjustPolicy) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
