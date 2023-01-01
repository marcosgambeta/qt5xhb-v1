/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QCameraImageProcessingControl INHERIT QMediaControl

   METHOD delete
   METHOD isParameterSupported
   METHOD isParameterValueSupported
   METHOD parameter
   METHOD setParameter

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QCameraImageProcessingControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QCameraImageProcessingControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtMultimedia/QCameraImageProcessingControl>
#endif

/*
~QCameraImageProcessingControl()
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSINGCONTROL_DELETE )
{
  QCameraImageProcessingControl * obj = (QCameraImageProcessingControl *) Qt5xHb::itemGetPtrStackSelfItem();

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
virtual bool isParameterSupported( QCameraImageProcessingControl::ProcessingParameter parameter ) const = 0
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSINGCONTROL_ISPARAMETERSUPPORTED )
{
  QCameraImageProcessingControl * obj = (QCameraImageProcessingControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RBOOL( obj->isParameterSupported( (QCameraImageProcessingControl::ProcessingParameter) hb_parni(1) ) );
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
virtual bool isParameterValueSupported( QCameraImageProcessingControl::ProcessingParameter parameter, const QVariant & value ) const = 0
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSINGCONTROL_ISPARAMETERVALUESUPPORTED )
{
  QCameraImageProcessingControl * obj = (QCameraImageProcessingControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && ISQVARIANT(2) )
    {
#endif
      RBOOL( obj->isParameterValueSupported( (QCameraImageProcessingControl::ProcessingParameter) hb_parni(1), *PQVARIANT(2) ) );
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
virtual QVariant parameter( QCameraImageProcessingControl::ProcessingParameter parameter ) const = 0
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSINGCONTROL_PARAMETER )
{
  QCameraImageProcessingControl * obj = (QCameraImageProcessingControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      QVariant * ptr = new QVariant( obj->parameter( (QCameraImageProcessingControl::ProcessingParameter) hb_parni(1) ) );
      Qt5xHb::createReturnClass(ptr, "QVARIANT", true);
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
virtual void setParameter( QCameraImageProcessingControl::ProcessingParameter parameter, const QVariant & value ) = 0
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSINGCONTROL_SETPARAMETER )
{
  QCameraImageProcessingControl * obj = (QCameraImageProcessingControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && ISQVARIANT(2) )
    {
#endif
      obj->setParameter( (QCameraImageProcessingControl::ProcessingParameter) hb_parni(1), *PQVARIANT(2) );
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

#pragma ENDDUMP
