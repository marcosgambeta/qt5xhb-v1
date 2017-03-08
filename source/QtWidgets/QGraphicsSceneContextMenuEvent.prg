/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
REQUEST QPOINT
#endif

CLASS QGraphicsSceneContextMenuEvent INHERIT QGraphicsSceneEvent

   DATA class_id INIT Class_Id_QGraphicsSceneContextMenuEvent
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD modifiers
   METHOD pos
   METHOD reason
   METHOD scenePos
   METHOD screenPos
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsSceneContextMenuEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QGraphicsSceneContextMenuEvent>
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
#include <QGraphicsSceneContextMenuEvent>
#endif

HB_FUNC_STATIC( QGRAPHICSSCENECONTEXTMENUEVENT_DELETE )
{
  QGraphicsSceneContextMenuEvent * obj = (QGraphicsSceneContextMenuEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
Qt::KeyboardModifiers modifiers () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENECONTEXTMENUEVENT_MODIFIERS )
{
  QGraphicsSceneContextMenuEvent * obj = (QGraphicsSceneContextMenuEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->modifiers (  ) );
  }
}


/*
QPointF pos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENECONTEXTMENUEVENT_POS )
{
  QGraphicsSceneContextMenuEvent * obj = (QGraphicsSceneContextMenuEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->pos (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
Reason reason () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENECONTEXTMENUEVENT_REASON )
{
  QGraphicsSceneContextMenuEvent * obj = (QGraphicsSceneContextMenuEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->reason (  ) );
  }
}


/*
QPointF scenePos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENECONTEXTMENUEVENT_SCENEPOS )
{
  QGraphicsSceneContextMenuEvent * obj = (QGraphicsSceneContextMenuEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->scenePos (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
QPoint screenPos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENECONTEXTMENUEVENT_SCREENPOS )
{
  QGraphicsSceneContextMenuEvent * obj = (QGraphicsSceneContextMenuEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->screenPos (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}



#pragma ENDDUMP
