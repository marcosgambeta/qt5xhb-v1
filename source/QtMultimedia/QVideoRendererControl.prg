//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTVIDEOSURFACE
#endif

CLASS QVideoRendererControl INHERIT QMediaControl

   METHOD delete
   METHOD setSurface
   METHOD surface

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QVideoRendererControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QVideoRendererControl>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtMultimedia/QVideoRendererControl>
#endif

#include <QtMultimedia/QAbstractVideoSurface>

    /*
    ~QVideoRendererControl()
    */
HB_FUNC_STATIC(QVIDEORENDERERCONTROL_DELETE)
{
  QVideoRendererControl *obj = (QVideoRendererControl *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
virtual void setSurface( QAbstractVideoSurface * surface ) = 0
*/
HB_FUNC_STATIC(QVIDEORENDERERCONTROL_SETSURFACE)
{
  QVideoRendererControl *obj = (QVideoRendererControl *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQABSTRACTVIDEOSURFACE(1))
    {
#endif
      obj->setSurface(PQABSTRACTVIDEOSURFACE(1));
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
virtual QAbstractVideoSurface * surface() const = 0
*/
HB_FUNC_STATIC(QVIDEORENDERERCONTROL_SURFACE)
{
  QVideoRendererControl *obj = (QVideoRendererControl *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QAbstractVideoSurface *ptr = obj->surface();
      Qt5xHb::createReturnQObjectClass(ptr, "QABSTRACTVIDEOSURFACE");
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
