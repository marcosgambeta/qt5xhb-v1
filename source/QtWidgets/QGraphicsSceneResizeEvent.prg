/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QSIZEF
#endif

CLASS QGraphicsSceneResizeEvent INHERIT QGraphicsSceneEvent

   DATA class_id INIT Class_Id_QGraphicsSceneResizeEvent
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD newSize
   METHOD oldSize
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsSceneResizeEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QGraphicsSceneResizeEvent>
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
#include <QGraphicsSceneResizeEvent>
#endif
#endif

/*
QGraphicsSceneMoveEvent ()
*/
HB_FUNC_STATIC( QGRAPHICSSCENERESIZEEVENT_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QGraphicsSceneResizeEvent * o = new QGraphicsSceneResizeEvent (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QGraphicsSceneResizeEvent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QGRAPHICSSCENERESIZEEVENT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QGraphicsSceneResizeEvent * obj = (QGraphicsSceneResizeEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QSizeF newSize () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENERESIZEEVENT_NEWSIZE )
{
  QGraphicsSceneResizeEvent * obj = (QGraphicsSceneResizeEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->newSize (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}


/*
QSizeF oldSize () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENERESIZEEVENT_OLDSIZE )
{
  QGraphicsSceneResizeEvent * obj = (QGraphicsSceneResizeEvent *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->oldSize (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}



#pragma ENDDUMP
