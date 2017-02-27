/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"


CLASS QGraphicsObject INHERIT QObject,QGraphicsItem

   DATA class_id INIT Class_Id_QGraphicsObject
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD grabGesture
   METHOD ungrabGesture
   METHOD onEnabledChanged
   METHOD onOpacityChanged
   METHOD onParentChanged
   METHOD onRotationChanged
   METHOD onScaleChanged
   METHOD onVisibleChanged
   METHOD onXChanged
   METHOD onYChanged
   METHOD onZChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsObject
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QGraphicsObject>
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
#include <QGraphicsObject>
#endif
#endif


HB_FUNC_STATIC( QGRAPHICSOBJECT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QGraphicsObject * obj = (QGraphicsObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void grabGesture ( Qt::GestureType gesture, Qt::GestureFlags flags = Qt::GestureFlags() )
*/
HB_FUNC_STATIC( QGRAPHICSOBJECT_GRABGESTURE )
{
  QGraphicsObject * obj = (QGraphicsObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = ISNIL(2)? (int) Qt::GestureFlags() : hb_parni(2);
    obj->grabGesture (  (Qt::GestureType) par1,  (Qt::GestureFlags) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void ungrabGesture ( Qt::GestureType gesture )
*/
HB_FUNC_STATIC( QGRAPHICSOBJECT_UNGRABGESTURE )
{
  QGraphicsObject * obj = (QGraphicsObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->ungrabGesture (  (Qt::GestureType) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
