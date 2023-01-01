/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST Q3DSCENE
REQUEST QPOINT
#endif

CLASS QAbstract3DInputHandler INHERIT QObject

   METHOD delete
   METHOD inputView
   METHOD setInputView
   METHOD inputPosition
   METHOD setInputPosition
   METHOD scene
   METHOD setScene
   METHOD mouseDoubleClickEvent
   METHOD touchEvent
   METHOD mousePressEvent
   METHOD mouseReleaseEvent
   METHOD mouseMoveEvent
   METHOD wheelEvent

   METHOD onInputViewChanged
   METHOD onPositionChanged
   METHOD onSceneChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAbstract3DInputHandler
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtDataVisualization/QAbstract3DInputHandler>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtDataVisualization/QAbstract3DInputHandler>
#endif

using namespace QtDataVisualization;

/*
virtual ~QAbstract3DInputHandler()
*/
HB_FUNC_STATIC( QABSTRACT3DINPUTHANDLER_DELETE )
{
  QAbstract3DInputHandler * obj = (QAbstract3DInputHandler *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QAbstract3DInputHandler::InputView inputView() const
*/
HB_FUNC_STATIC( QABSTRACT3DINPUTHANDLER_INPUTVIEW )
{
  QAbstract3DInputHandler * obj = (QAbstract3DInputHandler *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->inputView() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setInputView( QAbstract3DInputHandler::InputView inputView )
*/
HB_FUNC_STATIC( QABSTRACT3DINPUTHANDLER_SETINPUTVIEW )
{
  QAbstract3DInputHandler * obj = (QAbstract3DInputHandler *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setInputView( (QAbstract3DInputHandler::InputView) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QPoint inputPosition() const
*/
HB_FUNC_STATIC( QABSTRACT3DINPUTHANDLER_INPUTPOSITION )
{
  QAbstract3DInputHandler * obj = (QAbstract3DInputHandler *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPoint * ptr = new QPoint( obj->inputPosition() );
      Qt5xHb::createReturnClass(ptr, "QPOINT", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setInputPosition( const QPoint & position )
*/
HB_FUNC_STATIC( QABSTRACT3DINPUTHANDLER_SETINPUTPOSITION )
{
  QAbstract3DInputHandler * obj = (QAbstract3DInputHandler *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPOINT(1) )
    {
#endif
      obj->setInputPosition( *PQPOINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
Q3DScene * scene() const
*/
HB_FUNC_STATIC( QABSTRACT3DINPUTHANDLER_SCENE )
{
  QAbstract3DInputHandler * obj = (QAbstract3DInputHandler *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      Q3DScene * ptr = obj->scene();
      Qt5xHb::createReturnQObjectClass( ptr, "Q3DSCENE" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setScene( Q3DScene * scene )
*/
HB_FUNC_STATIC( QABSTRACT3DINPUTHANDLER_SETSCENE )
{
  QAbstract3DInputHandler * obj = (QAbstract3DInputHandler *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQ3DSCENE(1) )
    {
#endif
      obj->setScene( PQ3DSCENE(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
virtual void mouseDoubleClickEvent( QMouseEvent * event )
*/
HB_FUNC_STATIC( QABSTRACT3DINPUTHANDLER_MOUSEDOUBLECLICKEVENT )
{
  QAbstract3DInputHandler * obj = (QAbstract3DInputHandler *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMOUSEEVENT(1) )
    {
#endif
      obj->mouseDoubleClickEvent( PQMOUSEEVENT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
virtual void touchEvent( QTouchEvent * event )
*/
HB_FUNC_STATIC( QABSTRACT3DINPUTHANDLER_TOUCHEVENT )
{
  QAbstract3DInputHandler * obj = (QAbstract3DInputHandler *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTOUCHEVENT(1) )
    {
#endif
      obj->touchEvent( PQTOUCHEVENT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
virtual void mousePressEvent( QMouseEvent * event, const QPoint & mousePos )
*/
HB_FUNC_STATIC( QABSTRACT3DINPUTHANDLER_MOUSEPRESSEVENT )
{
  QAbstract3DInputHandler * obj = (QAbstract3DInputHandler *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQMOUSEEVENT(1) && ISQPOINT(2) )
    {
#endif
      obj->mousePressEvent( PQMOUSEEVENT(1), *PQPOINT(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
virtual void mouseReleaseEvent( QMouseEvent * event, const QPoint & mousePos )
*/
HB_FUNC_STATIC( QABSTRACT3DINPUTHANDLER_MOUSERELEASEEVENT )
{
  QAbstract3DInputHandler * obj = (QAbstract3DInputHandler *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQMOUSEEVENT(1) && ISQPOINT(2) )
    {
#endif
      obj->mouseReleaseEvent( PQMOUSEEVENT(1), *PQPOINT(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
virtual void mouseMoveEvent( QMouseEvent * event, const QPoint & mousePos )
*/
HB_FUNC_STATIC( QABSTRACT3DINPUTHANDLER_MOUSEMOVEEVENT )
{
  QAbstract3DInputHandler * obj = (QAbstract3DInputHandler *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQMOUSEEVENT(1) && ISQPOINT(2) )
    {
#endif
      obj->mouseMoveEvent( PQMOUSEEVENT(1), *PQPOINT(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
virtual void wheelEvent( QWheelEvent * event )
*/
HB_FUNC_STATIC( QABSTRACT3DINPUTHANDLER_WHEELEVENT )
{
  QAbstract3DInputHandler * obj = (QAbstract3DInputHandler *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQWHEELEVENT(1) )
    {
#endif
      obj->wheelEvent( PQWHEELEVENT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

void QAbstract3DInputHandlerSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QABSTRACT3DINPUTHANDLER_ONINPUTVIEWCHANGED )
{
  QAbstract3DInputHandlerSlots_connect_signal( "inputViewChanged(QAbstract3DInputHandler::InputView)", "inputViewChanged(QAbstract3DInputHandler::InputView)" );
}

HB_FUNC_STATIC( QABSTRACT3DINPUTHANDLER_ONPOSITIONCHANGED )
{
  QAbstract3DInputHandlerSlots_connect_signal( "positionChanged(QPoint)", "positionChanged(QPoint)" );
}

HB_FUNC_STATIC( QABSTRACT3DINPUTHANDLER_ONSCENECHANGED )
{
  QAbstract3DInputHandlerSlots_connect_signal( "sceneChanged(Q3DScene*)", "sceneChanged(Q3DScene*)" );
}

#pragma ENDDUMP
