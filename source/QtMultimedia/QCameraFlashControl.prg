/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QCameraFlashControl INHERIT QMediaControl

   METHOD delete
   METHOD flashMode
   METHOD isFlashModeSupported
   METHOD isFlashReady
   METHOD setFlashMode

   METHOD onFlashReady

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QCameraFlashControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QCameraFlashControl>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtMultimedia/QCameraFlashControl>
#endif

/*
~QCameraFlashControl()
*/
HB_FUNC_STATIC( QCAMERAFLASHCONTROL_DELETE )
{
  QCameraFlashControl * obj = (QCameraFlashControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
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
virtual QCameraExposure::FlashModes flashMode() const = 0
*/
HB_FUNC_STATIC( QCAMERAFLASHCONTROL_FLASHMODE )
{
  QCameraFlashControl * obj = (QCameraFlashControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->flashMode() );
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
virtual bool isFlashModeSupported( QCameraExposure::FlashModes mode ) const = 0
*/
HB_FUNC_STATIC( QCAMERAFLASHCONTROL_ISFLASHMODESUPPORTED )
{
  QCameraFlashControl * obj = (QCameraFlashControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RBOOL( obj->isFlashModeSupported( (QCameraExposure::FlashModes) hb_parni(1) ) );
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
virtual bool isFlashReady() const = 0
*/
HB_FUNC_STATIC( QCAMERAFLASHCONTROL_ISFLASHREADY )
{
  QCameraFlashControl * obj = (QCameraFlashControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isFlashReady() );
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
virtual void setFlashMode( QCameraExposure::FlashModes mode ) = 0
*/
HB_FUNC_STATIC( QCAMERAFLASHCONTROL_SETFLASHMODE )
{
  QCameraFlashControl * obj = (QCameraFlashControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setFlashMode( (QCameraExposure::FlashModes) hb_parni(1) );
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

void QCameraFlashControlSlots_connect_signal(const QString & signal, const QString & slot);

HB_FUNC_STATIC( QCAMERAFLASHCONTROL_ONFLASHREADY )
{
  QCameraFlashControlSlots_connect_signal("flashReady(bool)", "flashReady(bool)");
}

#pragma ENDDUMP
