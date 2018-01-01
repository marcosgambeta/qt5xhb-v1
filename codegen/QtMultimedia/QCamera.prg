%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCAMERAEXPOSURE
REQUEST QCAMERAFOCUS
REQUEST QCAMERAIMAGEPROCESSING
REQUEST QBYTEARRAY
#endif

CLASS QCamera INHERIT QMediaObject

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD captureMode
   METHOD error
   METHOD errorString
   METHOD exposure
   METHOD focus
   METHOD imageProcessing
   METHOD isCaptureModeSupported
   METHOD lockStatus1
   METHOD lockStatus2
   METHOD lockStatus
   METHOD requestedLocks
   METHOD setViewfinder1
   METHOD setViewfinder2
   METHOD setViewfinder3
   METHOD setViewFinder
   METHOD state
   METHOD status
   METHOD supportedLocks
   METHOD load
   METHOD searchAndLock1
   METHOD searchAndLock2
   METHOD searchAndLock
   METHOD setCaptureMode
   METHOD start
   METHOD stop
   METHOD unload
   METHOD unlock1
   METHOD unlock2
   METHOD unlock
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

$destructor

#pragma BEGINDUMP

$includes

$prototype=QCamera(QObject * parent = 0)
$constructor=|new1|QObject *=0

$prototype=QCamera(const QByteArray & device, QObject * parent = 0)
$constructor=|new2|const QByteArray &,QObject *=0

//[1]QCamera(QObject * parent = 0)
//[2]QCamera(const QByteArray & device, QObject * parent = 0)

HB_FUNC_STATIC( QCAMERA_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    HB_FUNC_EXEC( QCAMERA_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && ISOPTQOBJECT(2) )
  {
    HB_FUNC_EXEC( QCAMERA_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=CaptureModes captureMode() const
$method=|QCamera::CaptureModes|captureMode|

$prototype=Error error() const
$method=|QCamera::Error|error|

$prototype=QString errorString() const
$method=|QString|errorString|

$prototype=QCameraExposure * exposure() const
$method=|QCameraExposure *|exposure|

$prototype=QCameraFocus * focus() const
$method=|QCameraFocus *|focus|

$prototype=QCameraImageProcessing * imageProcessing() const
$method=|QCameraImageProcessing *|imageProcessing|

$prototype=bool isCaptureModeSupported(CaptureModes mode) const
$method=|bool|isCaptureModeSupported|QCamera::CaptureModes

$prototype=QCamera::LockStatus lockStatus() const
$method=|QCamera::LockStatus|lockStatus,lockStatus1|

$prototype=QCamera::LockStatus lockStatus(QCamera::LockType lockType) const
$method=|QCamera::LockStatus|lockStatus,lockStatus2|QCamera::LockType

//[1]QCamera::LockStatus lockStatus() const
//[2]QCamera::LockStatus lockStatus(QCamera::LockType lockType) const

HB_FUNC_STATIC( QCAMERA_LOCKSTATUS )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QCAMERA_LOCKSTATUS1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QCAMERA_LOCKSTATUS2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QCamera::LockTypes requestedLocks() const
$method=|QCamera::LockTypes|requestedLocks|

$prototype=void setViewfinder(QVideoWidget * viewfinder)
$method=|void|setViewfinder,setViewfinder1|QVideoWidget *

$prototype=void setViewfinder(QGraphicsVideoItem * viewfinder)
$method=|void|setViewfinder,setViewfinder2|QGraphicsVideoItem *

$prototype=void setViewfinder(QAbstractVideoSurface * surface)
$method=|void|setViewfinder,setViewfinder3|QAbstractVideoSurface *

//[1]void setViewfinder(QVideoWidget * viewfinder)
//[2]void setViewfinder(QGraphicsVideoItem * viewfinder)
//[3]void setViewfinder(QAbstractVideoSurface * surface)

HB_FUNC_STATIC( QCAMERA_SETVIEWFINDER )
{
  if( ISNUMPAR(1) && ISQVIDEOWIDGET(1) )
  {
    HB_FUNC_EXEC( QCAMERA_SETVIEWFINDER1 );
  }
  else if( ISNUMPAR(1) && ISQGRAPHICSVIDEOITEM(1) )
  {
    HB_FUNC_EXEC( QCAMERA_SETVIEWFINDER2 );
  }
  else if( ISNUMPAR(1) && ISQABSTRACTVIDEOSURFACE(1) )
  {
    HB_FUNC_EXEC( QCAMERA_SETVIEWFINDER3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=State state() const
$method=|QCamera::State|state|

$prototype=Status status() const
$method=|QCamera::Status|status|

$prototype=QCamera::LockTypes supportedLocks() const
$method=|QCamera::LockTypes|supportedLocks|

$prototype=void load()
$method=|void|load|

$prototype=void searchAndLock()
$method=|void|searchAndLock,searchAndLock1|

$prototype=void searchAndLock(QCamera::LockTypes locks)
$method=|void|searchAndLock,searchAndLock2|QCamera::LockTypes

//[1]void searchAndLock()
//[2]void searchAndLock(QCamera::LockTypes locks)

HB_FUNC_STATIC( QCAMERA_SEARCHANDLOCK )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QCAMERA_SEARCHANDLOCK1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QCAMERA_SEARCHANDLOCK2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setCaptureMode(QCamera::CaptureModes mode)
$method=|void|setCaptureMode|QCamera::CaptureModes

$prototype=void start()
$method=|void|start|

$prototype=void stop()
$method=|void|stop|

$prototype=void unload()
$method=|void|unload|

$prototype=void unlock()
$method=|void|unlock,unlock1|

$prototype=void unlock(QCamera::LockTypes locks)
$method=|void|unlock,unlock2|QCamera::LockTypes

//[1]void unlock()
//[2]void unlock(QCamera::LockTypes locks)

HB_FUNC_STATIC( QCAMERA_UNLOCK )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QCAMERA_UNLOCK1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QCAMERA_UNLOCK2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=static QList<QByteArray> availableDevices()
$staticMethod=|QList<QByteArray>|availableDevices|

$prototype=static QString deviceDescription(const QByteArray & device)
$staticMethod=|QString|deviceDescription|const QByteArray &

#pragma ENDDUMP
