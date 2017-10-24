/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QScrollEvent INHERIT QEvent

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
#include <QScrollEvent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QScrollEvent>
#endif

/*
QScrollEvent(const QPointF &contentPos, const QPointF &overshoot, ScrollState scrollState)
*/
HB_FUNC_STATIC( QSCROLLEVENT_NEW )
{
  QScrollEvent * o = new QScrollEvent ( *PQPOINTF(1), *PQPOINTF(2), (QScrollEvent::ScrollState) hb_parni(3) );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QSCROLLEVENT_DELETE )
{
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
}

/*
QPointF contentPos() const
*/
HB_FUNC_STATIC( QSCROLLEVENT_CONTENTPOS )
{
  QScrollEvent * obj = (QScrollEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->contentPos () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
QPointF overshootDistance() const
*/
HB_FUNC_STATIC( QSCROLLEVENT_OVERSHOOTDISTANCE )
{
  QScrollEvent * obj = (QScrollEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->overshootDistance () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
ScrollState scrollState() const
*/
HB_FUNC_STATIC( QSCROLLEVENT_SCROLLSTATE )
{
  QScrollEvent * obj = (QScrollEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->scrollState () );
  }
}



#pragma ENDDUMP
