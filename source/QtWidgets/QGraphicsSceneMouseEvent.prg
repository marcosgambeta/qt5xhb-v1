//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINT
REQUEST QPOINTF
#endif

CLASS QGraphicsSceneMouseEvent INHERIT QGraphicsSceneEvent

   METHOD delete
   METHOD button
   METHOD buttonDownPos
   METHOD buttonDownScenePos
   METHOD buttonDownScreenPos
   METHOD buttons
   METHOD lastPos
   METHOD lastScenePos
   METHOD lastScreenPos
   METHOD modifiers
   METHOD pos
   METHOD scenePos
   METHOD screenPos

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGraphicsSceneMouseEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QGraphicsSceneMouseEvent>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtWidgets/QGraphicsSceneMouseEvent>
#endif

HB_FUNC_STATIC(QGRAPHICSSCENEMOUSEEVENT_DELETE)
{
  QGraphicsSceneMouseEvent *obj = (QGraphicsSceneMouseEvent *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
Qt::MouseButton button() const
*/
HB_FUNC_STATIC(QGRAPHICSSCENEMOUSEEVENT_BUTTON)
{
  QGraphicsSceneMouseEvent *obj = (QGraphicsSceneMouseEvent *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->button());
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
QPointF buttonDownPos( Qt::MouseButton button ) const
*/
HB_FUNC_STATIC(QGRAPHICSSCENEMOUSEEVENT_BUTTONDOWNPOS)
{
  QGraphicsSceneMouseEvent *obj = (QGraphicsSceneMouseEvent *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      QPointF *ptr = new QPointF(obj->buttonDownPos((Qt::MouseButton)hb_parni(1)));
      Qt5xHb::createReturnClass(ptr, "QPOINTF", true);
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
QPointF buttonDownScenePos( Qt::MouseButton button ) const
*/
HB_FUNC_STATIC(QGRAPHICSSCENEMOUSEEVENT_BUTTONDOWNSCENEPOS)
{
  QGraphicsSceneMouseEvent *obj = (QGraphicsSceneMouseEvent *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      QPointF *ptr = new QPointF(obj->buttonDownScenePos((Qt::MouseButton)hb_parni(1)));
      Qt5xHb::createReturnClass(ptr, "QPOINTF", true);
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
QPoint buttonDownScreenPos( Qt::MouseButton button ) const
*/
HB_FUNC_STATIC(QGRAPHICSSCENEMOUSEEVENT_BUTTONDOWNSCREENPOS)
{
  QGraphicsSceneMouseEvent *obj = (QGraphicsSceneMouseEvent *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      QPoint *ptr = new QPoint(obj->buttonDownScreenPos((Qt::MouseButton)hb_parni(1)));
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
Qt::MouseButtons buttons() const
*/
HB_FUNC_STATIC(QGRAPHICSSCENEMOUSEEVENT_BUTTONS)
{
  QGraphicsSceneMouseEvent *obj = (QGraphicsSceneMouseEvent *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->buttons());
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
QPointF lastPos() const
*/
HB_FUNC_STATIC(QGRAPHICSSCENEMOUSEEVENT_LASTPOS)
{
  QGraphicsSceneMouseEvent *obj = (QGraphicsSceneMouseEvent *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QPointF *ptr = new QPointF(obj->lastPos());
      Qt5xHb::createReturnClass(ptr, "QPOINTF", true);
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
QPointF lastScenePos() const
*/
HB_FUNC_STATIC(QGRAPHICSSCENEMOUSEEVENT_LASTSCENEPOS)
{
  QGraphicsSceneMouseEvent *obj = (QGraphicsSceneMouseEvent *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QPointF *ptr = new QPointF(obj->lastScenePos());
      Qt5xHb::createReturnClass(ptr, "QPOINTF", true);
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
QPoint lastScreenPos() const
*/
HB_FUNC_STATIC(QGRAPHICSSCENEMOUSEEVENT_LASTSCREENPOS)
{
  QGraphicsSceneMouseEvent *obj = (QGraphicsSceneMouseEvent *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QPoint *ptr = new QPoint(obj->lastScreenPos());
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
Qt::KeyboardModifiers modifiers() const
*/
HB_FUNC_STATIC(QGRAPHICSSCENEMOUSEEVENT_MODIFIERS)
{
  QGraphicsSceneMouseEvent *obj = (QGraphicsSceneMouseEvent *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->modifiers());
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
QPointF pos() const
*/
HB_FUNC_STATIC(QGRAPHICSSCENEMOUSEEVENT_POS)
{
  QGraphicsSceneMouseEvent *obj = (QGraphicsSceneMouseEvent *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QPointF *ptr = new QPointF(obj->pos());
      Qt5xHb::createReturnClass(ptr, "QPOINTF", true);
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
QPointF scenePos() const
*/
HB_FUNC_STATIC(QGRAPHICSSCENEMOUSEEVENT_SCENEPOS)
{
  QGraphicsSceneMouseEvent *obj = (QGraphicsSceneMouseEvent *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QPointF *ptr = new QPointF(obj->scenePos());
      Qt5xHb::createReturnClass(ptr, "QPOINTF", true);
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
QPoint screenPos() const
*/
HB_FUNC_STATIC(QGRAPHICSSCENEMOUSEEVENT_SCREENPOS)
{
  QGraphicsSceneMouseEvent *obj = (QGraphicsSceneMouseEvent *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QPoint *ptr = new QPoint(obj->screenPos());
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

#pragma ENDDUMP
