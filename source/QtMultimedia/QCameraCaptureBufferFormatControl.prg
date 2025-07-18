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

CLASS QCameraCaptureBufferFormatControl INHERIT QMediaObject

   METHOD delete
   METHOD bufferFormat
   METHOD setBufferFormat
   METHOD supportedBufferFormats

   METHOD onBufferFormatChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QCameraCaptureBufferFormatControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QCameraCaptureBufferFormatControl>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtMultimedia/QCameraCaptureBufferFormatControl>
#endif

    /*
    ~QCameraCaptureBufferFormatControl()
    */
HB_FUNC_STATIC(QCAMERACAPTUREBUFFERFORMATCONTROL_DELETE)
{
  QCameraCaptureBufferFormatControl *obj = (QCameraCaptureBufferFormatControl *)Qt5xHb::itemGetPtrStackSelfItem();

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
virtual QVideoFrame::PixelFormat bufferFormat() const = 0
*/
HB_FUNC_STATIC(QCAMERACAPTUREBUFFERFORMATCONTROL_BUFFERFORMAT)
{
  QCameraCaptureBufferFormatControl *obj = (QCameraCaptureBufferFormatControl *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->bufferFormat());
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
virtual void setBufferFormat( QVideoFrame::PixelFormat format ) = 0
*/
HB_FUNC_STATIC(QCAMERACAPTUREBUFFERFORMATCONTROL_SETBUFFERFORMAT)
{
  QCameraCaptureBufferFormatControl *obj = (QCameraCaptureBufferFormatControl *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setBufferFormat((QVideoFrame::PixelFormat)hb_parni(1));
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
virtual QList<QVideoFrame::PixelFormat> supportedBufferFormats() const = 0
*/
HB_FUNC_STATIC(QCAMERACAPTUREBUFFERFORMATCONTROL_SUPPORTEDBUFFERFORMATS)
{
  QCameraCaptureBufferFormatControl *obj = (QCameraCaptureBufferFormatControl *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QList<QVideoFrame::PixelFormat> list = obj->supportedBufferFormats();
      PHB_ITEM pArray = hb_itemArrayNew(0);
      for (int i = 0; i < list.count(); i++)
      {
        PHB_ITEM pItem = hb_itemPutNI(NULL, static_cast<int>(list[i]));
        hb_arrayAddForward(pArray, pItem);
        hb_itemRelease(pItem);
      }
      hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

void QCameraCaptureBufferFormatControlSlots_connect_signal(const QString &signal, const QString &slot);

HB_FUNC_STATIC(QCAMERACAPTUREBUFFERFORMATCONTROL_ONBUFFERFORMATCHANGED)
{
  QCameraCaptureBufferFormatControlSlots_connect_signal("bufferFormatChanged(QVideoFrame::PixelFormat)",
                                                        "bufferFormatChanged(QVideoFrame::PixelFormat)");
}

#pragma ENDDUMP
