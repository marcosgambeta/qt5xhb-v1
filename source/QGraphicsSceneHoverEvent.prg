/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QPOINTF
REQUEST QPOINT

CLASS QGraphicsSceneHoverEvent INHERIT QGraphicsSceneEvent

   DATA class_id INIT Class_Id_QGraphicsSceneHoverEvent
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD lastPos
   METHOD lastScenePos
   METHOD lastScreenPos
   METHOD modifiers
   METHOD pos
   METHOD scenePos
   METHOD screenPos
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsSceneHoverEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QGraphicsSceneHoverEvent>
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
#include <QGraphicsSceneHoverEvent>
#endif
#endif

HB_FUNC_STATIC( QGRAPHICSSCENEHOVEREVENT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QGraphicsSceneHoverEvent * obj = (QGraphicsSceneHoverEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QPointF lastPos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEHOVEREVENT_LASTPOS )
{
  QGraphicsSceneHoverEvent * obj = (QGraphicsSceneHoverEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->lastPos (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
QPointF lastScenePos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEHOVEREVENT_LASTSCENEPOS )
{
  QGraphicsSceneHoverEvent * obj = (QGraphicsSceneHoverEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->lastScenePos (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
QPoint lastScreenPos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEHOVEREVENT_LASTSCREENPOS )
{
  QGraphicsSceneHoverEvent * obj = (QGraphicsSceneHoverEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->lastScreenPos (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}


/*
Qt::KeyboardModifiers modifiers () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEHOVEREVENT_MODIFIERS )
{
  QGraphicsSceneHoverEvent * obj = (QGraphicsSceneHoverEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->modifiers (  );
    hb_retni( i );
  }
}


/*
QPointF pos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEHOVEREVENT_POS )
{
  QGraphicsSceneHoverEvent * obj = (QGraphicsSceneHoverEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->pos (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
QPointF scenePos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEHOVEREVENT_SCENEPOS )
{
  QGraphicsSceneHoverEvent * obj = (QGraphicsSceneHoverEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->scenePos (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
QPoint screenPos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEHOVEREVENT_SCREENPOS )
{
  QGraphicsSceneHoverEvent * obj = (QGraphicsSceneHoverEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->screenPos (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}



#pragma ENDDUMP
