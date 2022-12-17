/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QCAMERAEXPOSURE
REQUEST QCAMERAFOCUS
REQUEST QCAMERAIMAGEPROCESSING
REQUEST QCAMERAVIEWFINDERSETTINGS
REQUEST QSIZE
#endif

CLASS QCamera INHERIT QMediaObject

   METHOD new
   METHOD delete
   METHOD state
   METHOD status
   METHOD captureMode
   METHOD setCaptureMode
   METHOD lockStatus
   METHOD error
   METHOD errorString
   METHOD exposure
   METHOD focus
   METHOD imageProcessing
   METHOD isCaptureModeSupported
   METHOD requestedLocks
   METHOD setViewfinder
   METHOD supportedLocks
   METHOD load
   METHOD searchAndLock
   METHOD start
   METHOD stop
   METHOD unload
   METHOD unlock
   METHOD availability
   METHOD viewfinderSettings
   METHOD setViewfinderSettings
   METHOD supportedViewfinderSettings
   METHOD supportedViewfinderResolutions
   METHOD supportedViewfinderPixelFormats
   METHOD availableDevices
   METHOD deviceDescription

   METHOD onCaptureModeChanged
   METHOD onError
   METHOD onLockFailed
   METHOD onLockStatusChanged1
   METHOD onLockStatusChanged2
   METHOD onLocked
   METHOD onStateChanged
   METHOD onStatusChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QCamera
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QCamera>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtMultimedia/QCamera>
#endif

HB_FUNC_STATIC( QCAMERA_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||HB_ISNIL(1)) )
  {
    /*
    QCamera( QObject * parent = nullptr )
    */
    QCamera * obj = new QCamera( OPQOBJECT(1,nullptr) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && (ISQOBJECT(2)||HB_ISNIL(2)) )
  {
    /*
    QCamera( const QByteArray & deviceName, QObject * parent = nullptr )
    */
    QCamera * obj = new QCamera( *PQBYTEARRAY(1), OPQOBJECT(2,nullptr) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else if( ISBETWEEN(1,2) && ISQCAMERAINFO(1) && (ISQOBJECT(2)||HB_ISNIL(2)) )
  {
    /*
    QCamera( const QCameraInfo & cameraInfo, QObject * parent = nullptr )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
    QCamera * obj = new QCamera( *PQCAMERAINFO(1), OPQOBJECT(2,nullptr) );
    Qt5xHb::returnNewObject(obj, false);
#endif
  }
  else if( ISBETWEEN(1,2) && HB_ISNUM(1) && (ISQOBJECT(2)||HB_ISNIL(2)) )
  {
    /*
    QCamera( QCamera::Position position, QObject * parent = nullptr )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
    QCamera * obj = new QCamera( (QCamera::Position) hb_parni(1), OPQOBJECT(2,nullptr) );
    Qt5xHb::returnNewObject(obj, false);
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
~QCamera()
*/
HB_FUNC_STATIC( QCAMERA_DELETE )
{
  QCamera * obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

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
QCamera::State state() const
*/
HB_FUNC_STATIC( QCAMERA_STATE )
{
  QCamera * obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->state() );
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
QCamera::Status status() const
*/
HB_FUNC_STATIC( QCAMERA_STATUS )
{
  QCamera * obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->status() );
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
QCamera::CaptureModes captureMode() const
*/
HB_FUNC_STATIC( QCAMERA_CAPTUREMODE )
{
  QCamera * obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->captureMode() );
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
void setCaptureMode( QCamera::CaptureModes mode )
*/
HB_FUNC_STATIC( QCAMERA_SETCAPTUREMODE )
{
  QCamera * obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setCaptureMode( (QCamera::CaptureModes) hb_parni(1) );
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

HB_FUNC_STATIC( QCAMERA_LOCKSTATUS )
{
  if( ISNUMPAR(0) )
  {
    /*
    QCamera::LockStatus lockStatus() const
    */
    QCamera * obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      RENUM( obj->lockStatus() );
    }
  }
  else if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    /*
    QCamera::LockStatus lockStatus( QCamera::LockType lockType ) const
    */
    QCamera * obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      RENUM( obj->lockStatus( (QCamera::LockType) hb_parni(1) ) );
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QCamera::Error error() const
*/
HB_FUNC_STATIC( QCAMERA_ERROR )
{
  QCamera * obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->error() );
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
QString errorString() const
*/
HB_FUNC_STATIC( QCAMERA_ERRORSTRING )
{
  QCamera * obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->errorString() );
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
QCameraExposure * exposure() const
*/
HB_FUNC_STATIC( QCAMERA_EXPOSURE )
{
  QCamera * obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QCameraExposure * ptr = obj->exposure();
      Qt5xHb::createReturnQObjectClass( ptr, "QCAMERAEXPOSURE" );
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
QCameraFocus * focus() const
*/
HB_FUNC_STATIC( QCAMERA_FOCUS )
{
  QCamera * obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QCameraFocus * ptr = obj->focus();
      Qt5xHb::createReturnQObjectClass( ptr, "QCAMERAFOCUS" );
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
QCameraImageProcessing * imageProcessing() const
*/
HB_FUNC_STATIC( QCAMERA_IMAGEPROCESSING )
{
  QCamera * obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QCameraImageProcessing * ptr = obj->imageProcessing();
      Qt5xHb::createReturnQObjectClass( ptr, "QCAMERAIMAGEPROCESSING" );
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
bool isCaptureModeSupported( QCamera::CaptureModes mode ) const
*/
HB_FUNC_STATIC( QCAMERA_ISCAPTUREMODESUPPORTED )
{
  QCamera * obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RBOOL( obj->isCaptureModeSupported( (QCamera::CaptureModes) hb_parni(1) ) );
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
QCamera::LockTypes requestedLocks() const
*/
HB_FUNC_STATIC( QCAMERA_REQUESTEDLOCKS )
{
  QCamera * obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->requestedLocks() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QCAMERA_SETVIEWFINDER )
{
  if( ISNUMPAR(1) && ISQVIDEOWIDGET(1) )
  {
    /*
    void setViewfinder( QVideoWidget * viewfinder )
    */
    QCamera * obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      obj->setViewfinder( PQVIDEOWIDGET(1) );
    }
  
    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(1) && ISQGRAPHICSVIDEOITEM(1) )
  {
    /*
    void setViewfinder( QGraphicsVideoItem * viewfinder )
    */
    QCamera * obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      obj->setViewfinder( PQGRAPHICSVIDEOITEM(1) );
    }
  
    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(1) && ISQABSTRACTVIDEOSURFACE(1) )
  {
    /*
    void setViewfinder( QAbstractVideoSurface * surface )
    */
    QCamera * obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      obj->setViewfinder( PQABSTRACTVIDEOSURFACE(1) );
    }
  
    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QCamera::LockTypes supportedLocks() const
*/
HB_FUNC_STATIC( QCAMERA_SUPPORTEDLOCKS )
{
  QCamera * obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->supportedLocks() );
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
void load()
*/
HB_FUNC_STATIC( QCAMERA_LOAD )
{
  QCamera * obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->load();
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

HB_FUNC_STATIC( QCAMERA_SEARCHANDLOCK )
{
  if( ISNUMPAR(0) )
  {
    /*
    void searchAndLock()
    */
    QCamera * obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      obj->searchAndLock();
    }
  
    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    /*
    void searchAndLock( QCamera::LockTypes locks )
    */
    QCamera * obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      obj->searchAndLock( (QCamera::LockTypes) hb_parni(1) );
    }
  
    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void start()
*/
HB_FUNC_STATIC( QCAMERA_START )
{
  QCamera * obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->start();
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
void stop()
*/
HB_FUNC_STATIC( QCAMERA_STOP )
{
  QCamera * obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->stop();
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
void unload()
*/
HB_FUNC_STATIC( QCAMERA_UNLOAD )
{
  QCamera * obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->unload();
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

HB_FUNC_STATIC( QCAMERA_UNLOCK )
{
  if( ISNUMPAR(0) )
  {
    /*
    void unlock()
    */
    QCamera * obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      obj->unlock();
    }
  
    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    /*
    void unlock( QCamera::LockTypes locks )
    */
    QCamera * obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      obj->unlock( (QCamera::LockTypes) hb_parni(1) );
    }
  
    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QMultimedia::AvailabilityStatus availability() const override
*/
HB_FUNC_STATIC( QCAMERA_AVAILABILITY )
{
  QCamera * obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->availability() );
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
QCameraViewfinderSettings viewfinderSettings() const
*/
HB_FUNC_STATIC( QCAMERA_VIEWFINDERSETTINGS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  QCamera * obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QCameraViewfinderSettings * ptr = new QCameraViewfinderSettings( obj->viewfinderSettings() );
      Qt5xHb::createReturnClass(ptr, "QCAMERAVIEWFINDERSETTINGS", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setViewfinderSettings( const QCameraViewfinderSettings & settings )
*/
HB_FUNC_STATIC( QCAMERA_SETVIEWFINDERSETTINGS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  QCamera * obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQCAMERAVIEWFINDERSETTINGS(1) )
    {
#endif
      obj->setViewfinderSettings( *PQCAMERAVIEWFINDERSETTINGS(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QList<QCameraViewfinderSettings> supportedViewfinderSettings( const QCameraViewfinderSettings & settings = QCameraViewfinderSettings() ) const
*/
HB_FUNC_STATIC( QCAMERA_SUPPORTEDVIEWFINDERSETTINGS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  QCamera * obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (ISQCAMERAVIEWFINDERSETTINGS(1)||HB_ISNIL(1)) )
    {
#endif
      QList<QCameraViewfinderSettings> list = obj->supportedViewfinderSettings( HB_ISNIL(1)? QCameraViewfinderSettings() : *(QCameraViewfinderSettings *) Qt5xHb::itemGetPtr(1) );
      PHB_DYNS pDynSym = hb_dynsymFindName( "QCAMERAVIEWFINDERSETTINGS" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( int i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QCameraViewfinderSettings *) new QCameraViewfinderSettings( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QCAMERAVIEWFINDERSETTINGS", HB_ERR_ARGS_BASEPARAMS );
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
#endif
}

/*
QList<QSize> supportedViewfinderResolutions( const QCameraViewfinderSettings & settings = QCameraViewfinderSettings() ) const
*/
HB_FUNC_STATIC( QCAMERA_SUPPORTEDVIEWFINDERRESOLUTIONS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  QCamera * obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (ISQCAMERAVIEWFINDERSETTINGS(1)||HB_ISNIL(1)) )
    {
#endif
      QList<QSize> list = obj->supportedViewfinderResolutions( HB_ISNIL(1)? QCameraViewfinderSettings() : *(QCameraViewfinderSettings *) Qt5xHb::itemGetPtr(1) );
      PHB_DYNS pDynSym = hb_dynsymFindName( "QSIZE" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( int i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QSize *) new QSize( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QSIZE", HB_ERR_ARGS_BASEPARAMS );
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
#endif
}

/*
QList<QVideoFrame::PixelFormat> supportedViewfinderPixelFormats( const QCameraViewfinderSettings & settings = QCameraViewfinderSettings() ) const
*/
HB_FUNC_STATIC( QCAMERA_SUPPORTEDVIEWFINDERPIXELFORMATS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  QCamera * obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (ISQCAMERAVIEWFINDERSETTINGS(1)||HB_ISNIL(1)) )
    {
#endif
      QList<QVideoFrame::PixelFormat> list = obj->supportedViewfinderPixelFormats( HB_ISNIL(1)? QCameraViewfinderSettings() : *(QCameraViewfinderSettings *) Qt5xHb::itemGetPtr(1) );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      for( int i = 0; i < list.count(); i++ )
      {
        PHB_ITEM pItem = hb_itemPutNI( NULL, (int) list[i] );
        hb_arrayAddForward( pArray, pItem );
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
#endif
}

/*
static QList<QByteArray> availableDevices()
*/
HB_FUNC_STATIC( QCAMERA_AVAILABLEDEVICES )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    QList<QByteArray> list = QCamera::availableDevices();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    if( pDynSym )
    {
      for( int i = 0; i < list.count(); i++ )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QByteArray *) new QByteArray( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        PHB_ITEM pDestroy = hb_itemNew( NULL );
        hb_itemPutL( pDestroy, true );
        hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
        hb_itemRelease( pDestroy );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    else
    {
      hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QBYTEARRAY", HB_ERR_ARGS_BASEPARAMS );
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

/*
static QString deviceDescription( const QByteArray & device )
*/
HB_FUNC_STATIC( QCAMERA_DEVICEDESCRIPTION )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
#endif
    RQSTRING( QCamera::deviceDescription( *PQBYTEARRAY(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

void QCameraSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QCAMERA_ONCAPTUREMODECHANGED )
{
  QCameraSlots_connect_signal( "captureModeChanged(QCamera::CaptureModes)", "captureModeChanged(QCamera::CaptureModes)" );
}

HB_FUNC_STATIC( QCAMERA_ONERROR )
{
  QCameraSlots_connect_signal( "error(QCamera::Error)", "error(QCamera::Error)" );
}

HB_FUNC_STATIC( QCAMERA_ONLOCKFAILED )
{
  QCameraSlots_connect_signal( "lockFailed()", "lockFailed()" );
}

HB_FUNC_STATIC( QCAMERA_ONLOCKSTATUSCHANGED1 )
{
  QCameraSlots_connect_signal( "lockStatusChanged(QCamera::LockStatus,QCamera::LockChangeReason)", "lockStatusChanged(QCamera::LockStatus,QCamera::LockChangeReason)" );
}

HB_FUNC_STATIC( QCAMERA_ONLOCKSTATUSCHANGED2 )
{
  QCameraSlots_connect_signal( "lockStatusChanged(QCamera::LockType,QCamera::LockStatus,QCamera::LockChangeReason)", "lockStatusChanged(QCamera::LockType,QCamera::LockStatus,QCamera::LockChangeReason)" );
}

HB_FUNC_STATIC( QCAMERA_ONLOCKED )
{
  QCameraSlots_connect_signal( "locked()", "locked()" );
}

HB_FUNC_STATIC( QCAMERA_ONSTATECHANGED )
{
  QCameraSlots_connect_signal( "stateChanged(QCamera::State)", "stateChanged(QCamera::State)" );
}

HB_FUNC_STATIC( QCAMERA_ONSTATUSCHANGED )
{
  QCameraSlots_connect_signal( "statusChanged(QCamera::Status)", "statusChanged(QCamera::Status)" );
}

#pragma ENDDUMP
