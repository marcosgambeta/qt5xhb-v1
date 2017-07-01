/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QCameraExposureControl INHERIT QMediaControl

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD actualValue
   METHOD isParameterSupported
   METHOD requestedValue
   METHOD setValue
   METHOD supportedParameterRange

   METHOD onActualValueChanged
   METHOD onParameterRangeChanged
   METHOD onRequestedValueChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCameraExposureControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QCameraExposureControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QCameraExposureControl>
#endif

HB_FUNC_STATIC( QCAMERAEXPOSURECONTROL_DELETE )
{
  QCameraExposureControl * obj = (QCameraExposureControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QVariant actualValue(ExposureParameter parameter) const = 0
*/
HB_FUNC_STATIC( QCAMERAEXPOSURECONTROL_ACTUALVALUE )
{
  QCameraExposureControl * obj = (QCameraExposureControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->actualValue ( (QCameraExposureControl::ExposureParameter) hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
virtual bool isParameterSupported(ExposureParameter parameter) const = 0
*/
HB_FUNC_STATIC( QCAMERAEXPOSURECONTROL_ISPARAMETERSUPPORTED )
{
  QCameraExposureControl * obj = (QCameraExposureControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isParameterSupported ( (QCameraExposureControl::ExposureParameter) hb_parni(1) ) );
  }
}


/*
virtual QVariant requestedValue(ExposureParameter parameter) const = 0
*/
HB_FUNC_STATIC( QCAMERAEXPOSURECONTROL_REQUESTEDVALUE )
{
  QCameraExposureControl * obj = (QCameraExposureControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->requestedValue ( (QCameraExposureControl::ExposureParameter) hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
virtual bool setValue(ExposureParameter parameter, const QVariant & value) = 0
*/
HB_FUNC_STATIC( QCAMERAEXPOSURECONTROL_SETVALUE )
{
  QCameraExposureControl * obj = (QCameraExposureControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->setValue ( (QCameraExposureControl::ExposureParameter) hb_parni(1), *PQVARIANT(2) ) );
  }
}


/*
virtual QVariantList supportedParameterRange(ExposureParameter parameter, bool * continuous) const = 0
*/
HB_FUNC_STATIC( QCAMERAEXPOSURECONTROL_SUPPORTEDPARAMETERRANGE )
{
  QCameraExposureControl * obj = (QCameraExposureControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    bool par2;
    _qt5xhb_convert_qvariantlist_to_array( obj->supportedParameterRange ( (QCameraExposureControl::ExposureParameter) hb_parni(1), &par2 ) );
    hb_storl( par2, 2 );
  }
}




#pragma ENDDUMP
