/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

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

PROCEDURE destroyObject () CLASS QCameraImageProcessingControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QCameraImageProcessingControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QCameraImageProcessingControl>
#endif

/*
explicit QCameraImageProcessingControl(QObject *parent = Q_NULLPTR) [protected]
*/

/*
~QCameraImageProcessingControl()
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSINGCONTROL_DELETE )
{
  QCameraImageProcessingControl * obj = (QCameraImageProcessingControl *) _qt5xhb_itemGetPtrStackSelfItem();

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
}

/*
virtual bool isParameterSupported(ProcessingParameter parameter) const = 0
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSINGCONTROL_ISPARAMETERSUPPORTED )
{
  QCameraImageProcessingControl * obj = (QCameraImageProcessingControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RBOOL( obj->isParameterSupported ( (QCameraImageProcessingControl::ProcessingParameter) hb_parni(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual bool isParameterValueSupported(ProcessingParameter parameter, const QVariant & value) const = 0
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSINGCONTROL_ISPARAMETERVALUESUPPORTED )
{
  QCameraImageProcessingControl * obj = (QCameraImageProcessingControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISQVARIANT(2) )
    {
#endif
      RBOOL( obj->isParameterValueSupported ( (QCameraImageProcessingControl::ProcessingParameter) hb_parni(1), *PQVARIANT(2) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual QVariant parameter(ProcessingParameter parameter) const = 0
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSINGCONTROL_PARAMETER )
{
  QCameraImageProcessingControl * obj = (QCameraImageProcessingControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      QVariant * ptr = new QVariant( obj->parameter ( (QCameraImageProcessingControl::ProcessingParameter) hb_parni(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual void setParameter(ProcessingParameter parameter, const QVariant & value) = 0
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSINGCONTROL_SETPARAMETER )
{
  QCameraImageProcessingControl * obj = (QCameraImageProcessingControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISQVARIANT(2) )
    {
#endif
      obj->setParameter ( (QCameraImageProcessingControl::ProcessingParameter) hb_parni(1), *PQVARIANT(2) );
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

#pragma ENDDUMP
