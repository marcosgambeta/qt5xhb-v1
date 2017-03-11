/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
REQUEST QCAMERAFOCUSZONELIST
#endif

CLASS QCameraFocus INHERIT QObject

   DATA class_id INIT Class_Id_QCameraFocus
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

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
    QPointF * ptr = new QPointF( obj->customFocusPoint (  ) );
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
    hb_retnd( obj->digitalZoom (  ) );
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
    hb_retni( obj->focusMode (  ) );
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
    hb_retni( obj->focusPointMode (  ) );
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
    QCameraFocusZoneList * ptr = new QCameraFocusZoneList( obj->focusZones (  ) );
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
    hb_retl( obj->isAvailable (  ) );
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
    hb_retl( obj->isFocusModeSupported (  (QCameraFocus::FocusModes) par1 ) );
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
    int par1 = hb_parni(1);
    hb_retl( obj->isFocusPointModeSupported (  (QCameraFocus::FocusPointMode) par1 ) );
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
    hb_retnd( obj->maximumDigitalZoom (  ) );
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
    hb_retnd( obj->maximumOpticalZoom (  ) );
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
    hb_retnd( obj->opticalZoom (  ) );
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
    QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
    obj->setCustomFocusPoint ( *par1 );
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
    obj->setFocusMode (  (QCameraFocus::FocusModes) par1 );
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
    int par1 = hb_parni(1);
    obj->setFocusPointMode (  (QCameraFocus::FocusPointMode) par1 );
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
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    obj->zoomTo ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
