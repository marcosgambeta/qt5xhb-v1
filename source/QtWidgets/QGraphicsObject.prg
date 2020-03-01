/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QGraphicsObject INHERIT QObject,QGraphicsItem

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

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QGraphicsObject>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtWidgets/QGraphicsObject>
#endif

HB_FUNC_STATIC( QGRAPHICSOBJECT_DELETE )
{
  QGraphicsObject * obj = (QGraphicsObject *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    Events_disconnect_all_events (obj, true);
    Signals_disconnect_all_signals (obj, true);
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
void grabGesture ( Qt::GestureType gesture, Qt::GestureFlags flags = Qt::GestureFlags() )
*/
HB_FUNC_STATIC( QGRAPHICSOBJECT_GRABGESTURE )
{
  QGraphicsObject * obj = (QGraphicsObject *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
    {
#endif
      obj->grabGesture ( (Qt::GestureType) hb_parni(1), ISNIL(2)? (Qt::GestureFlags) Qt::GestureFlags() : (Qt::GestureFlags) hb_parni(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
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
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->ungrabGesture ( (Qt::GestureType) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

void QGraphicsObjectSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QGRAPHICSOBJECT_ONENABLEDCHANGED )
{
  QGraphicsObjectSlots_connect_signal( "enabledChanged()", "enabledChanged()" );
}

HB_FUNC_STATIC( QGRAPHICSOBJECT_ONOPACITYCHANGED )
{
  QGraphicsObjectSlots_connect_signal( "opacityChanged()", "opacityChanged()" );
}

HB_FUNC_STATIC( QGRAPHICSOBJECT_ONPARENTCHANGED )
{
  QGraphicsObjectSlots_connect_signal( "parentChanged()", "parentChanged()" );
}

HB_FUNC_STATIC( QGRAPHICSOBJECT_ONROTATIONCHANGED )
{
  QGraphicsObjectSlots_connect_signal( "rotationChanged()", "rotationChanged()" );
}

HB_FUNC_STATIC( QGRAPHICSOBJECT_ONSCALECHANGED )
{
  QGraphicsObjectSlots_connect_signal( "scaleChanged()", "scaleChanged()" );
}

HB_FUNC_STATIC( QGRAPHICSOBJECT_ONVISIBLECHANGED )
{
  QGraphicsObjectSlots_connect_signal( "visibleChanged()", "visibleChanged()" );
}

HB_FUNC_STATIC( QGRAPHICSOBJECT_ONXCHANGED )
{
  QGraphicsObjectSlots_connect_signal( "xChanged()", "xChanged()" );
}

HB_FUNC_STATIC( QGRAPHICSOBJECT_ONYCHANGED )
{
  QGraphicsObjectSlots_connect_signal( "yChanged()", "yChanged()" );
}

HB_FUNC_STATIC( QGRAPHICSOBJECT_ONZCHANGED )
{
  QGraphicsObjectSlots_connect_signal( "zChanged()", "zChanged()" );
}

#pragma ENDDUMP
