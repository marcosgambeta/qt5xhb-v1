//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QCameraControl INHERIT QMediaObject

   METHOD delete
   METHOD canChangeProperty
   METHOD captureMode
   METHOD isCaptureModeSupported
   METHOD setCaptureMode
   METHOD setState
   METHOD state
   METHOD status

   METHOD onCaptureModeChanged
   METHOD onError
   METHOD onStateChanged
   METHOD onStatusChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QCameraControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QCameraControl>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtMultimedia/QCameraControl>
#endif

    /*
    ~QCameraControl()
    */
HB_FUNC_STATIC(QCAMERACONTROL_DELETE)
{
  QCameraControl *obj = (QCameraControl *)Qt5xHb::itemGetPtrStackSelfItem();

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
virtual bool canChangeProperty( QCameraControl::PropertyChangeType changeType, QCamera::Status status ) const = 0
*/
HB_FUNC_STATIC(QCAMERACONTROL_CANCHANGEPROPERTY)
{
  QCameraControl *obj = (QCameraControl *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
    {
#endif
      RBOOL(obj->canChangeProperty((QCameraControl::PropertyChangeType)hb_parni(1), (QCamera::Status)hb_parni(2)));
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
virtual QCamera::CaptureModes captureMode() const = 0
*/
HB_FUNC_STATIC(QCAMERACONTROL_CAPTUREMODE)
{
  QCameraControl *obj = (QCameraControl *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->captureMode());
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
virtual bool isCaptureModeSupported( QCamera::CaptureModes mode ) const = 0
*/
HB_FUNC_STATIC(QCAMERACONTROL_ISCAPTUREMODESUPPORTED)
{
  QCameraControl *obj = (QCameraControl *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RBOOL(obj->isCaptureModeSupported((QCamera::CaptureModes)hb_parni(1)));
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
virtual void setCaptureMode( QCamera::CaptureModes mode ) = 0
*/
HB_FUNC_STATIC(QCAMERACONTROL_SETCAPTUREMODE)
{
  QCameraControl *obj = (QCameraControl *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setCaptureMode((QCamera::CaptureModes)hb_parni(1));
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
virtual void setState( QCamera::State state ) = 0
*/
HB_FUNC_STATIC(QCAMERACONTROL_SETSTATE)
{
  QCameraControl *obj = (QCameraControl *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setState((QCamera::State)hb_parni(1));
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
virtual QCamera::State state() const = 0
*/
HB_FUNC_STATIC(QCAMERACONTROL_STATE)
{
  QCameraControl *obj = (QCameraControl *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->state());
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
virtual QCamera::Status status() const = 0
*/
HB_FUNC_STATIC(QCAMERACONTROL_STATUS)
{
  QCameraControl *obj = (QCameraControl *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->status());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

void QCameraControlSlots_connect_signal(const QString &signal, const QString &slot);

HB_FUNC_STATIC(QCAMERACONTROL_ONCAPTUREMODECHANGED)
{
  QCameraControlSlots_connect_signal("captureModeChanged(QCamera::CaptureModes)",
                                     "captureModeChanged(QCamera::CaptureModes)");
}

HB_FUNC_STATIC(QCAMERACONTROL_ONERROR)
{
  QCameraControlSlots_connect_signal("error(int,QString)", "error(int,QString)");
}

HB_FUNC_STATIC(QCAMERACONTROL_ONSTATECHANGED)
{
  QCameraControlSlots_connect_signal("stateChanged(QCamera::State)", "stateChanged(QCamera::State)");
}

HB_FUNC_STATIC(QCAMERACONTROL_ONSTATUSCHANGED)
{
  QCameraControlSlots_connect_signal("statusChanged(QCamera::Status)", "statusChanged(QCamera::Status)");
}

#pragma ENDDUMP
