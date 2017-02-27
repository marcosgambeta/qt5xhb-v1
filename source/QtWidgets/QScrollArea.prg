/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QSIZE
#endif

CLASS QScrollArea INHERIT QAbstractScrollArea

   DATA class_id INIT Class_Id_QScrollArea
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QScrollArea>
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

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QScrollArea>
#endif
#endif

/*
QScrollArea ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QSCROLLAREA_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qt5xhb_itemGetPtr(1);
  QScrollArea * o = new QScrollArea ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QScrollArea *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QSCROLLAREA_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
Qt::Alignment alignment () const
*/
HB_FUNC_STATIC( QSCROLLAREA_ALIGNMENT )
{
  QScrollArea * obj = (QScrollArea *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->alignment (  ) );
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
    obj->ensureVisible ( (int) hb_parni(1), (int) hb_parni(2), (int) ISNIL(3)? 50 : hb_parni(3), (int) ISNIL(4)? 50 : hb_parni(4) );
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
    QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
    obj->ensureWidgetVisible ( par1, (int) ISNIL(2)? 50 : hb_parni(2), (int) ISNIL(3)? 50 : hb_parni(3) );
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
    int par1 = hb_parni(1);
    obj->setAlignment (  (Qt::Alignment) par1 );
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
    QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
    obj->setWidget ( par1 );
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
    obj->setWidgetResizable ( (bool) hb_parl(1) );
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
    QWidget * ptr = obj->takeWidget (  );
    _qt5xhb_createReturnClass ( ptr, "QWIDGET" );
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
    QWidget * ptr = obj->widget (  );
    _qt5xhb_createReturnClass ( ptr, "QWIDGET" );
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
    hb_retl( obj->widgetResizable (  ) );
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
    hb_retl( obj->focusNextPrevChild ( (bool) hb_parl(1) ) );
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
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}



#pragma ENDDUMP
