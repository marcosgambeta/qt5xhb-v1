/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
REQUEST QPOINT
#endif

CLASS QGraphicsSceneHelpEvent INHERIT QGraphicsSceneEvent

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD scenePos
   METHOD screenPos

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsSceneHelpEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QGraphicsSceneHelpEvent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QGraphicsSceneHelpEvent>
#endif

HB_FUNC_STATIC( QGRAPHICSSCENEHELPEVENT_DELETE )
{
  QGraphicsSceneHelpEvent * obj = (QGraphicsSceneHelpEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QPointF scenePos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEHELPEVENT_SCENEPOS )
{
  QGraphicsSceneHelpEvent * obj = (QGraphicsSceneHelpEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->scenePos () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
QPoint screenPos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEHELPEVENT_SCREENPOS )
{
  QGraphicsSceneHelpEvent * obj = (QGraphicsSceneHelpEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->screenPos () );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}



#pragma ENDDUMP
