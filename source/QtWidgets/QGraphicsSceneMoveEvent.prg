/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QGraphicsSceneMoveEvent INHERIT QGraphicsSceneEvent

   DATA class_id INIT Class_Id_QGraphicsSceneMoveEvent
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD newPos
   METHOD oldPos
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsSceneMoveEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QGraphicsSceneMoveEvent>
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
#include <QGraphicsSceneMoveEvent>
#endif

/*
QGraphicsSceneMoveEvent ()
*/
HB_FUNC_STATIC( QGRAPHICSSCENEMOVEEVENT_NEW )
{
  QGraphicsSceneMoveEvent * o = new QGraphicsSceneMoveEvent (  );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QGRAPHICSSCENEMOVEEVENT_DELETE )
{
  QGraphicsSceneMoveEvent * obj = (QGraphicsSceneMoveEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QPointF newPos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEMOVEEVENT_NEWPOS )
{
  QGraphicsSceneMoveEvent * obj = (QGraphicsSceneMoveEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->newPos (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
QPointF oldPos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEMOVEEVENT_OLDPOS )
{
  QGraphicsSceneMoveEvent * obj = (QGraphicsSceneMoveEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->oldPos (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}



#pragma ENDDUMP
