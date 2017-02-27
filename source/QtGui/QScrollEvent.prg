/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QScrollEvent INHERIT QEvent

   DATA class_id INIT Class_Id_QScrollEvent
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD contentPos
   METHOD overshootDistance
   METHOD scrollState
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QScrollEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QScrollEvent>
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
#include <QScrollEvent>
#endif
#endif

/*
QScrollEvent(const QPointF &contentPos, const QPointF &overshoot, ScrollState scrollState)
*/
HB_FUNC_STATIC( QSCROLLEVENT_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QPointF * par1 = (QPointF *) _qtxhb_itemGetPtr(1);
  QPointF * par2 = (QPointF *) _qtxhb_itemGetPtr(2);
  int par3 = hb_parni(3);
  QScrollEvent * o = new QScrollEvent ( *par1, *par2,  (QScrollEvent::ScrollState) par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QScrollEvent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QSCROLLEVENT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QScrollEvent * obj = (QScrollEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QPointF contentPos() const
*/
HB_FUNC_STATIC( QSCROLLEVENT_CONTENTPOS )
{
  QScrollEvent * obj = (QScrollEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->contentPos (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
QPointF overshootDistance() const
*/
HB_FUNC_STATIC( QSCROLLEVENT_OVERSHOOTDISTANCE )
{
  QScrollEvent * obj = (QScrollEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->overshootDistance (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
ScrollState scrollState() const
*/
HB_FUNC_STATIC( QSCROLLEVENT_SCROLLSTATE )
{
  QScrollEvent * obj = (QScrollEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->scrollState (  ) );
  }
}



#pragma ENDDUMP
