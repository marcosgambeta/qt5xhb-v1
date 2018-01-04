/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QSIZE
#endif

CLASS QScrollArea INHERIT QAbstractScrollArea

   METHOD new
   METHOD delete
   METHOD alignment
   METHOD ensureVisible
   METHOD ensureWidgetVisible
   METHOD setAlignment
   METHOD setWidget
   METHOD setWidgetResizable
   METHOD takeWidget
   METHOD widget
   METHOD widgetResizable
   METHOD focusNextPrevChild
   METHOD sizeHint

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QScrollArea
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QScrollArea>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QScrollArea>
#endif

/*
QScrollArea ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QSCROLLAREA_NEW )
{
  QScrollArea * o = new QScrollArea ( OPQWIDGET(1,0) );
  _qt5xhb_returnNewObject( o, false );
}


HB_FUNC_STATIC( QSCROLLAREA_DELETE )
{
  QScrollArea * obj = (QScrollArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
Qt::Alignment alignment () const
*/
HB_FUNC_STATIC( QSCROLLAREA_ALIGNMENT )
{
  QScrollArea * obj = (QScrollArea *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->alignment () );
  }
}


/*
void ensureVisible ( int x, int y, int xmargin = 50, int ymargin = 50 )
*/
HB_FUNC_STATIC( QSCROLLAREA_ENSUREVISIBLE )
{
  QScrollArea * obj = (QScrollArea *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && ISOPTNUM(3) && ISOPTNUM(4) )
    {
      obj->ensureVisible ( PINT(1), PINT(2), OPINT(3,50), OPINT(4,50) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void ensureWidgetVisible ( QWidget * childWidget, int xmargin = 50, int ymargin = 50 )
*/
HB_FUNC_STATIC( QSCROLLAREA_ENSUREWIDGETVISIBLE )
{
  QScrollArea * obj = (QScrollArea *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->ensureWidgetVisible ( PQWIDGET(1), OPINT(2,50), OPINT(3,50) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAlignment ( Qt::Alignment )
*/
HB_FUNC_STATIC( QSCROLLAREA_SETALIGNMENT )
{
  QScrollArea * obj = (QScrollArea *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAlignment ( (Qt::Alignment) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWidget ( QWidget * widget )
*/
HB_FUNC_STATIC( QSCROLLAREA_SETWIDGET )
{
  QScrollArea * obj = (QScrollArea *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setWidget ( PQWIDGET(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWidgetResizable ( bool resizable )
*/
HB_FUNC_STATIC( QSCROLLAREA_SETWIDGETRESIZABLE )
{
  QScrollArea * obj = (QScrollArea *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setWidgetResizable ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}


/*
QWidget * takeWidget ()
*/
HB_FUNC_STATIC( QSCROLLAREA_TAKEWIDGET )
{
  QScrollArea * obj = (QScrollArea *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * ptr = obj->takeWidget ();
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}


/*
QWidget * widget () const
*/
HB_FUNC_STATIC( QSCROLLAREA_WIDGET )
{
  QScrollArea * obj = (QScrollArea *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * ptr = obj->widget ();
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}


/*
bool widgetResizable () const
*/
HB_FUNC_STATIC( QSCROLLAREA_WIDGETRESIZABLE )
{
  QScrollArea * obj = (QScrollArea *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->widgetResizable () );
  }
}


/*
virtual bool focusNextPrevChild ( bool next )
*/
HB_FUNC_STATIC( QSCROLLAREA_FOCUSNEXTPREVCHILD )
{
  QScrollArea * obj = (QScrollArea *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      RBOOL( obj->focusNextPrevChild ( PBOOL(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}


/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QSCROLLAREA_SIZEHINT )
{
  QScrollArea * obj = (QScrollArea *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}



#pragma ENDDUMP
