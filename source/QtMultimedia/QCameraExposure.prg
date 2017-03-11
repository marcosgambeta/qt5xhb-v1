/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QCameraExposure INHERIT QObject

   DATA class_id INIT Class_Id_QCameraExposure
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD aperture
   METHOD exposureCompensation
   METHOD exposureMode
   METHOD flashMode
   METHOD isAvailable
   METHOD isExposureModeSupported
   METHOD isFlashModeSupported
   METHOD isFlashReady
   METHOD isMeteringModeSupported
   METHOD isoSensitivity
   METHOD meteringMode
   METHOD requestedAperture
   METHOD requestedIsoSensitivity
   METHOD requestedShutterSpeed
   METHOD setSpotMeteringPoint
   METHOD shutterSpeed
   METHOD spotMeteringPoint
   METHOD supportedApertures
   METHOD supportedIsoSensitivities
   METHOD supportedShutterSpeeds
   METHOD setAutoAperture
   METHOD setAutoIsoSensitivity
   METHOD setAutoShutterSpeed
   METHOD setExposureCompensation
   METHOD setExposureMode
   METHOD setFlashMode
   METHOD setManualAperture
   METHOD setManualIsoSensitivity
   METHOD setManualShutterSpeed
   METHOD setMeteringMode
   METHOD onApertureChanged
   METHOD onApertureRangeChanged
   METHOD onExposureCompensationChanged
   METHOD onFlashReady
   METHOD onIsoSensitivityChanged
   METHOD onShutterSpeedChanged
   METHOD onShutterSpeedRangeChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCameraExposure
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QCameraExposure>
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QCameraExposure>
#endif

#include <QPointF>


/*
qreal aperture() const
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_APERTURE )
{
  QCameraExposure * obj = (QCameraExposure *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->aperture (  ) );
  }
}


/*
qreal exposureCompensation() const
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_EXPOSURECOMPENSATION )
{
  QCameraExposure * obj = (QCameraExposure *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->exposureCompensation (  ) );
  }
}


/*
ExposureMode exposureMode() const
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_EXPOSUREMODE )
{
  QCameraExposure * obj = (QCameraExposure *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->exposureMode (  ) );
  }
}


/*
FlashModes flashMode() const
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_FLASHMODE )
{
  QCameraExposure * obj = (QCameraExposure *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->flashMode (  ) );
  }
}


/*
bool isAvailable() const
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_ISAVAILABLE )
{
  QCameraExposure * obj = (QCameraExposure *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isAvailable (  ) );
  }
}


/*
bool isExposureModeSupported(ExposureMode mode) const
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_ISEXPOSUREMODESUPPORTED )
{
  QCameraExposure * obj = (QCameraExposure *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->isExposureModeSupported (  (QCameraExposure::ExposureMode) par1 ) );
  }
}


/*
bool isFlashModeSupported(FlashModes mode) const
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_ISFLASHMODESUPPORTED )
{
  QCameraExposure * obj = (QCameraExposure *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->isFlashModeSupported (  (QCameraExposure::FlashModes) par1 ) );
  }
}


/*
bool isFlashReady() const
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_ISFLASHREADY )
{
  QCameraExposure * obj = (QCameraExposure *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isFlashReady (  ) );
  }
}


/*
bool isMeteringModeSupported(MeteringMode mode) const
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_ISMETERINGMODESUPPORTED )
{
  QCameraExposure * obj = (QCameraExposure *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->isMeteringModeSupported (  (QCameraExposure::MeteringMode) par1 ) );
  }
}


/*
int isoSensitivity() const
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_ISOSENSITIVITY )
{
  QCameraExposure * obj = (QCameraExposure *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->isoSensitivity (  ) );
  }
}


/*
MeteringMode meteringMode() const
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_METERINGMODE )
{
  QCameraExposure * obj = (QCameraExposure *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->meteringMode (  ) );
  }
}


/*
qreal requestedAperture() const
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_REQUESTEDAPERTURE )
{
  QCameraExposure * obj = (QCameraExposure *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->requestedAperture (  ) );
  }
}


/*
int requestedIsoSensitivity() const
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_REQUESTEDISOSENSITIVITY )
{
  QCameraExposure * obj = (QCameraExposure *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->requestedIsoSensitivity (  ) );
  }
}


/*
qreal requestedShutterSpeed() const
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_REQUESTEDSHUTTERSPEED )
{
  QCameraExposure * obj = (QCameraExposure *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->requestedShutterSpeed (  ) );
  }
}


/*
void setSpotMeteringPoint(const QPointF & point)
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_SETSPOTMETERINGPOINT )
{
  QCameraExposure * obj = (QCameraExposure *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
    obj->setSpotMeteringPoint ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal shutterSpeed() const
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_SHUTTERSPEED )
{
  QCameraExposure * obj = (QCameraExposure *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->shutterSpeed (  ) );
  }
}


/*
QPointF spotMeteringPoint() const
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_SPOTMETERINGPOINT )
{
  QCameraExposure * obj = (QCameraExposure *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->spotMeteringPoint (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
QList<qreal> supportedApertures(bool * continuous = 0) const
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_SUPPORTEDAPERTURES )
{
  QCameraExposure * obj = (QCameraExposure *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    bool par1;
    QList<qreal> list = obj->supportedApertures ( &par1 );
    _qt5xhb_convert_qlist_qreal_to_array ( list );
    hb_storl( par1, 1 );
  }
}


/*
QList<int> supportedIsoSensitivities(bool * continuous = 0) const
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_SUPPORTEDISOSENSITIVITIES )
{
  QCameraExposure * obj = (QCameraExposure *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    bool par1;
    QList<int> list = obj->supportedIsoSensitivities ( &par1 );
    _qt5xhb_convert_qlist_int_to_array ( list );
    hb_storl( par1, 1 );
  }
}


/*
QList<qreal> supportedShutterSpeeds(bool * continuous = 0) const
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_SUPPORTEDSHUTTERSPEEDS )
{
  QCameraExposure * obj = (QCameraExposure *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    bool par1;
    QList<qreal> list = obj->supportedShutterSpeeds ( &par1 );
    _qt5xhb_convert_qlist_qreal_to_array ( list );
    hb_storl( par1, 1 );
  }
}


/*
void setAutoAperture()
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_SETAUTOAPERTURE )
{
  QCameraExposure * obj = (QCameraExposure *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAutoAperture (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAutoIsoSensitivity()
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_SETAUTOISOSENSITIVITY )
{
  QCameraExposure * obj = (QCameraExposure *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAutoIsoSensitivity (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAutoShutterSpeed()
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_SETAUTOSHUTTERSPEED )
{
  QCameraExposure * obj = (QCameraExposure *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAutoShutterSpeed (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setExposureCompensation(qreal ev)
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_SETEXPOSURECOMPENSATION )
{
  QCameraExposure * obj = (QCameraExposure *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setExposureCompensation ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setExposureMode(ExposureMode mode)
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_SETEXPOSUREMODE )
{
  QCameraExposure * obj = (QCameraExposure *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setExposureMode (  (QCameraExposure::ExposureMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFlashMode(FlashModes mode)
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_SETFLASHMODE )
{
  QCameraExposure * obj = (QCameraExposure *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFlashMode (  (QCameraExposure::FlashModes) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setManualAperture(qreal aperture)
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_SETMANUALAPERTURE )
{
  QCameraExposure * obj = (QCameraExposure *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setManualAperture ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setManualIsoSensitivity(int iso)
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_SETMANUALISOSENSITIVITY )
{
  QCameraExposure * obj = (QCameraExposure *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setManualIsoSensitivity ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setManualShutterSpeed(qreal seconds)
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_SETMANUALSHUTTERSPEED )
{
  QCameraExposure * obj = (QCameraExposure *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setManualShutterSpeed ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMeteringMode(MeteringMode mode)
*/
HB_FUNC_STATIC( QCAMERAEXPOSURE_SETMETERINGMODE )
{
  QCameraExposure * obj = (QCameraExposure *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setMeteringMode (  (QCameraExposure::MeteringMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
