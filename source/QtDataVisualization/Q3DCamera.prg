/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVECTOR3D
#endif

CLASS Q3DCamera INHERIT Q3DObject

   METHOD new
   METHOD delete
   METHOD xRotation
   METHOD setXRotation
   METHOD yRotation
   METHOD setYRotation
   METHOD zoomLevel
   METHOD setZoomLevel
   METHOD cameraPreset
   METHOD setCameraPreset
   METHOD wrapXRotation
   METHOD setWrapXRotation
   METHOD wrapYRotation
   METHOD setWrapYRotation
   METHOD target
   METHOD setTarget
   METHOD minZoomLevel
   METHOD setMinZoomLevel
   METHOD maxZoomLevel
   METHOD setMaxZoomLevel
   METHOD copyValuesFrom
   METHOD setCameraPosition

   METHOD onCameraPresetChanged
   METHOD onMaxZoomLevelChanged
   METHOD onMinZoomLevelChanged
   METHOD onTargetChanged
   METHOD onWrapXRotationChanged
   METHOD onWrapYRotationChanged
   METHOD onXRotationChanged
   METHOD onYRotationChanged
   METHOD onZoomLevelChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS Q3DCamera
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtDataVisualization/Q3DCamera>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtDataVisualization/Q3DCamera>
#endif

using namespace QtDataVisualization;

/*
explicit Q3DCamera(QObject *parent = Q_NULLPTR)
*/
HB_FUNC_STATIC( Q3DCAMERA_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    Q3DCamera * o = new Q3DCamera ( OPQOBJECT(1,Q_NULLPTR) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual ~Q3DCamera()
*/
HB_FUNC_STATIC( Q3DCAMERA_DELETE )
{
  Q3DCamera * obj = (Q3DCamera *) _qt5xhb_itemGetPtrStackSelfItem();

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
float xRotation() const
*/
HB_FUNC_STATIC( Q3DCAMERA_XROTATION )
{
  Q3DCamera * obj = (Q3DCamera *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RFLOAT( obj->xRotation () );
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
void setXRotation(float rotation)
*/
HB_FUNC_STATIC( Q3DCAMERA_SETXROTATION )
{
  Q3DCamera * obj = (Q3DCamera *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setXRotation ( PFLOAT(1) );
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

/*
float yRotation() const
*/
HB_FUNC_STATIC( Q3DCAMERA_YROTATION )
{
  Q3DCamera * obj = (Q3DCamera *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RFLOAT( obj->yRotation () );
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
void setYRotation(float rotation)
*/
HB_FUNC_STATIC( Q3DCAMERA_SETYROTATION )
{
  Q3DCamera * obj = (Q3DCamera *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setYRotation ( PFLOAT(1) );
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

/*
float zoomLevel() const
*/
HB_FUNC_STATIC( Q3DCAMERA_ZOOMLEVEL )
{
  Q3DCamera * obj = (Q3DCamera *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RFLOAT( obj->zoomLevel () );
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
void setZoomLevel(float zoomLevel)
*/
HB_FUNC_STATIC( Q3DCAMERA_SETZOOMLEVEL )
{
  Q3DCamera * obj = (Q3DCamera *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setZoomLevel ( PFLOAT(1) );
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

/*
CameraPreset cameraPreset() const
*/
HB_FUNC_STATIC( Q3DCAMERA_CAMERAPRESET )
{
  Q3DCamera * obj = (Q3DCamera *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->cameraPreset () );
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
void setCameraPreset(CameraPreset preset)
*/
HB_FUNC_STATIC( Q3DCAMERA_SETCAMERAPRESET )
{
  Q3DCamera * obj = (Q3DCamera *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setCameraPreset ( (Q3DCamera::CameraPreset) hb_parni(1) );
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

/*
bool wrapXRotation() const
*/
HB_FUNC_STATIC( Q3DCAMERA_WRAPXROTATION )
{
  Q3DCamera * obj = (Q3DCamera *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->wrapXRotation () );
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
void setWrapXRotation(bool isEnabled)
*/
HB_FUNC_STATIC( Q3DCAMERA_SETWRAPXROTATION )
{
  Q3DCamera * obj = (Q3DCamera *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setWrapXRotation ( PBOOL(1) );
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

/*
bool wrapYRotation() const
*/
HB_FUNC_STATIC( Q3DCAMERA_WRAPYROTATION )
{
  Q3DCamera * obj = (Q3DCamera *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->wrapYRotation () );
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
void setWrapYRotation(bool isEnabled)
*/
HB_FUNC_STATIC( Q3DCAMERA_SETWRAPYROTATION )
{
  Q3DCamera * obj = (Q3DCamera *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setWrapYRotation ( PBOOL(1) );
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

/*
QVector3D target() const
*/
HB_FUNC_STATIC( Q3DCAMERA_TARGET )
{
  Q3DCamera * obj = (Q3DCamera *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QVector3D * ptr = new QVector3D( obj->target () );
      _qt5xhb_createReturnClass ( ptr, "QVECTOR3D", true );
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
void setTarget(const QVector3D &target)
*/
HB_FUNC_STATIC( Q3DCAMERA_SETTARGET )
{
  Q3DCamera * obj = (Q3DCamera *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVECTOR3D(1) )
    {
#endif
      obj->setTarget ( *PQVECTOR3D(1) );
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

/*
float minZoomLevel() const
*/
HB_FUNC_STATIC( Q3DCAMERA_MINZOOMLEVEL )
{
  Q3DCamera * obj = (Q3DCamera *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RFLOAT( obj->minZoomLevel () );
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
void setMinZoomLevel(float zoomLevel)
*/
HB_FUNC_STATIC( Q3DCAMERA_SETMINZOOMLEVEL )
{
  Q3DCamera * obj = (Q3DCamera *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setMinZoomLevel ( PFLOAT(1) );
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

/*
float maxZoomLevel() const
*/
HB_FUNC_STATIC( Q3DCAMERA_MAXZOOMLEVEL )
{
  Q3DCamera * obj = (Q3DCamera *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RFLOAT( obj->maxZoomLevel () );
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
void setMaxZoomLevel(float zoomLevel)
*/
HB_FUNC_STATIC( Q3DCAMERA_SETMAXZOOMLEVEL )
{
  Q3DCamera * obj = (Q3DCamera *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setMaxZoomLevel ( PFLOAT(1) );
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

/*
virtual void copyValuesFrom(const Q3DObject &source)
*/
HB_FUNC_STATIC( Q3DCAMERA_COPYVALUESFROM )
{
  Q3DCamera * obj = (Q3DCamera *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQ3DOBJECT(1) )
    {
#endif
      obj->copyValuesFrom ( *PQ3DOBJECT(1) );
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

/*
void setCameraPosition(float horizontal, float vertical, float zoom = 100.0f)
*/
HB_FUNC_STATIC( Q3DCAMERA_SETCAMERAPOSITION )
{
  Q3DCamera * obj = (Q3DCamera *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && ISOPTNUM(3) )
    {
#endif
      obj->setCameraPosition ( PFLOAT(1), PFLOAT(2), OPFLOAT(3,100.0f) );
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

void Q3DCameraSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( Q3DCAMERA_ONCAMERAPRESETCHANGED )
{
  Q3DCameraSlots_connect_signal( "cameraPresetChanged(Q3DCamera::CameraPreset)", "cameraPresetChanged(Q3DCamera::CameraPreset)" );
}

HB_FUNC_STATIC( Q3DCAMERA_ONMAXZOOMLEVELCHANGED )
{
  Q3DCameraSlots_connect_signal( "maxZoomLevelChanged(float)", "maxZoomLevelChanged(float)" );
}

HB_FUNC_STATIC( Q3DCAMERA_ONMINZOOMLEVELCHANGED )
{
  Q3DCameraSlots_connect_signal( "minZoomLevelChanged(float)", "minZoomLevelChanged(float)" );
}

HB_FUNC_STATIC( Q3DCAMERA_ONTARGETCHANGED )
{
  Q3DCameraSlots_connect_signal( "targetChanged(QVector3D)", "targetChanged(QVector3D)" );
}

HB_FUNC_STATIC( Q3DCAMERA_ONWRAPXROTATIONCHANGED )
{
  Q3DCameraSlots_connect_signal( "wrapXRotationChanged(bool)", "wrapXRotationChanged(bool)" );
}

HB_FUNC_STATIC( Q3DCAMERA_ONWRAPYROTATIONCHANGED )
{
  Q3DCameraSlots_connect_signal( "wrapYRotationChanged(bool)", "wrapYRotationChanged(bool)" );
}

HB_FUNC_STATIC( Q3DCAMERA_ONXROTATIONCHANGED )
{
  Q3DCameraSlots_connect_signal( "xRotationChanged(float)", "xRotationChanged(float)" );
}

HB_FUNC_STATIC( Q3DCAMERA_ONYROTATIONCHANGED )
{
  Q3DCameraSlots_connect_signal( "yRotationChanged(float)", "yRotationChanged(float)" );
}

HB_FUNC_STATIC( Q3DCAMERA_ONZOOMLEVELCHANGED )
{
  Q3DCameraSlots_connect_signal( "zoomLevelChanged(float)", "zoomLevelChanged(float)" );
}

#pragma ENDDUMP
