/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
REQUEST QCAMERAFOCUSZONELIST
#endif

CLASS QCameraFocus INHERIT QObject

   METHOD customFocusPoint
   METHOD digitalZoom
   METHOD focusMode
   METHOD focusPointMode
   METHOD focusZones
   METHOD isAvailable
   METHOD isFocusModeSupported
   METHOD isFocusPointModeSupported
   METHOD maximumDigitalZoom
   METHOD maximumOpticalZoom
   METHOD opticalZoom
   METHOD setCustomFocusPoint
   METHOD setFocusMode
   METHOD setFocusPointMode
   METHOD zoomTo

   METHOD onDigitalZoomChanged
   METHOD onFocusZonesChanged
   METHOD onMaximumDigitalZoomChanged
   METHOD onMaximumOpticalZoomChanged
   METHOD onOpticalZoomChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCameraFocus
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QCameraFocus>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QCameraFocus>
#endif


/*
QPointF customFocusPoint() const
*/
HB_FUNC_STATIC( QCAMERAFOCUS_CUSTOMFOCUSPOINT )
{
  QCameraFocus * obj = (QCameraFocus *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->customFocusPoint () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
qreal digitalZoom() const
*/
HB_FUNC_STATIC( QCAMERAFOCUS_DIGITALZOOM )
{
  QCameraFocus * obj = (QCameraFocus *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->digitalZoom () );
  }
}


/*
FocusModes focusMode() const
*/
HB_FUNC_STATIC( QCAMERAFOCUS_FOCUSMODE )
{
  QCameraFocus * obj = (QCameraFocus *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->focusMode () );
  }
}


/*
FocusPointMode focusPointMode() const
*/
HB_FUNC_STATIC( QCAMERAFOCUS_FOCUSPOINTMODE )
{
  QCameraFocus * obj = (QCameraFocus *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->focusPointMode () );
  }
}


/*
QCameraFocusZoneList focusZones() const
*/
HB_FUNC_STATIC( QCAMERAFOCUS_FOCUSZONES )
{
  QCameraFocus * obj = (QCameraFocus *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QCameraFocusZoneList * ptr = new QCameraFocusZoneList( obj->focusZones () );
    _qt5xhb_createReturnClass ( ptr, "QCAMERAFOCUSZONELIST" );
  }
}


/*
bool isAvailable() const
*/
HB_FUNC_STATIC( QCAMERAFOCUS_ISAVAILABLE )
{
  QCameraFocus * obj = (QCameraFocus *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isAvailable () );
  }
}


/*
bool isFocusModeSupported(FocusModes mode) const
*/
HB_FUNC_STATIC( QCAMERAFOCUS_ISFOCUSMODESUPPORTED )
{
  QCameraFocus * obj = (QCameraFocus *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    RBOOL( obj->isFocusModeSupported ( (QCameraFocus::FocusModes) par1 ) );
  }
}


/*
bool isFocusPointModeSupported(FocusPointMode mode) const
*/
HB_FUNC_STATIC( QCAMERAFOCUS_ISFOCUSPOINTMODESUPPORTED )
{
  QCameraFocus * obj = (QCameraFocus *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isFocusPointModeSupported ( (QCameraFocus::FocusPointMode) hb_parni(1) ) );
  }
}


/*
qreal maximumDigitalZoom() const
*/
HB_FUNC_STATIC( QCAMERAFOCUS_MAXIMUMDIGITALZOOM )
{
  QCameraFocus * obj = (QCameraFocus *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->maximumDigitalZoom () );
  }
}


/*
qreal maximumOpticalZoom() const
*/
HB_FUNC_STATIC( QCAMERAFOCUS_MAXIMUMOPTICALZOOM )
{
  QCameraFocus * obj = (QCameraFocus *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->maximumOpticalZoom () );
  }
}


/*
qreal opticalZoom() const
*/
HB_FUNC_STATIC( QCAMERAFOCUS_OPTICALZOOM )
{
  QCameraFocus * obj = (QCameraFocus *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->opticalZoom () );
  }
}


/*
void setCustomFocusPoint(const QPointF & point)
*/
HB_FUNC_STATIC( QCAMERAFOCUS_SETCUSTOMFOCUSPOINT )
{
  QCameraFocus * obj = (QCameraFocus *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCustomFocusPoint ( *PQPOINTF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFocusMode(FocusModes mode)
*/
HB_FUNC_STATIC( QCAMERAFOCUS_SETFOCUSMODE )
{
  QCameraFocus * obj = (QCameraFocus *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFocusMode ( (QCameraFocus::FocusModes) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFocusPointMode(FocusPointMode mode)
*/
HB_FUNC_STATIC( QCAMERAFOCUS_SETFOCUSPOINTMODE )
{
  QCameraFocus * obj = (QCameraFocus *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFocusPointMode ( (QCameraFocus::FocusPointMode) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void zoomTo(qreal optical, qreal digital)
*/
HB_FUNC_STATIC( QCAMERAFOCUS_ZOOMTO )
{
  QCameraFocus * obj = (QCameraFocus *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->zoomTo ( PQREAL(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
