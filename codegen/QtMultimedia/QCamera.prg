%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QMediaObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QCamera(QObject *parent = Q_NULLPTR)
$internalConstructor=|new1|QObject *=Q_NULLPTR

$prototype=explicit QCamera(const QByteArray& deviceName, QObject *parent = Q_NULLPTR)
$internalConstructor=|new2|const QByteArray &,QObject *=Q_NULLPTR

$prototype=explicit QCamera(const QCameraInfo& cameraInfo, QObject *parent = Q_NULLPTR)
$internalConstructor=5,3,0|new3|const QCameraInfo &,QObject *=Q_NULLPTR

$prototype=explicit QCamera(QCamera::Position position, QObject *parent = Q_NULLPTR)
$internalConstructor=5,3,0|new4|QCamera::Position,QObject *=Q_NULLPTR

//[1]explicit QCamera(QObject *parent = Q_NULLPTR)
//[2]explicit QCamera(const QByteArray& deviceName, QObject *parent = Q_NULLPTR)
//[3]explicit QCamera(const QCameraInfo& cameraInfo, QObject *parent = Q_NULLPTR)
//[4]explicit QCamera(QCamera::Position position, QObject *parent = Q_NULLPTR)

HB_FUNC_STATIC( QCAMERA_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QCamera_new1();
  }
  else if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && ISOPTQOBJECT(2) )
  {
    QCamera_new2();
  }
  else if( ISBETWEEN(1,2) && ISQCAMERAINFO(1) && ISOPTQOBJECT(2) )
  {
    QCamera_new3();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTQOBJECT(2) )
  {
    QCamera_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QCamera()
$deleteMethod

%%
%% Q_PROPERTY(QCamera::State state READ state NOTIFY stateChanged)
%%

$prototype=State state() const
$method=|QCamera::State|state|

%%
%% Q_PROPERTY(QCamera::Status status READ status NOTIFY statusChanged)
%%

$prototype=Status status() const
$method=|QCamera::Status|status|

%%
%% Q_PROPERTY(QCamera::CaptureModes captureMode READ captureMode WRITE setCaptureMode NOTIFY captureModeChanged)
%%

$prototype=CaptureModes captureMode() const
$method=|QCamera::CaptureModes|captureMode|

$prototype=void setCaptureMode(QCamera::CaptureModes mode)
$slotMethod=|void|setCaptureMode|QCamera::CaptureModes

%%
%% Q_PROPERTY(QCamera::LockStatus lockStatus READ lockStatus NOTIFY lockStatusChanged)
%%

$prototype=QCamera::LockStatus lockStatus() const
$internalMethod=|QCamera::LockStatus|lockStatus,lockStatus1|

$prototype=QCamera::LockStatus lockStatus(QCamera::LockType lockType) const
$internalMethod=|QCamera::LockStatus|lockStatus,lockStatus2|QCamera::LockType

//[1]QCamera::LockStatus lockStatus() const
//[2]QCamera::LockStatus lockStatus(QCamera::LockType lockType) const

HB_FUNC_STATIC( QCAMERA_LOCKSTATUS )
{
  if( ISNUMPAR(0) )
  {
    QCamera_lockStatus1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QCamera_lockStatus2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=lockStatus

%%
%%
%%

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

$prototype=QCamera::LockTypes requestedLocks() const
$method=|QCamera::LockTypes|requestedLocks|

$prototype=void setViewfinder(QVideoWidget * viewfinder)
$internalMethod=|void|setViewfinder,setViewfinder1|QVideoWidget *

$prototype=void setViewfinder(QGraphicsVideoItem * viewfinder)
$internalMethod=|void|setViewfinder,setViewfinder2|QGraphicsVideoItem *

$prototype=void setViewfinder(QAbstractVideoSurface * surface)
$internalMethod=|void|setViewfinder,setViewfinder3|QAbstractVideoSurface *

//[1]void setViewfinder(QVideoWidget * viewfinder)
//[2]void setViewfinder(QGraphicsVideoItem * viewfinder)
//[3]void setViewfinder(QAbstractVideoSurface * surface)

HB_FUNC_STATIC( QCAMERA_SETVIEWFINDER )
{
  if( ISNUMPAR(1) && ISQVIDEOWIDGET(1) )
  {
    QCamera_setViewfinder1();
  }
  else if( ISNUMPAR(1) && ISQGRAPHICSVIDEOITEM(1) )
  {
    QCamera_setViewfinder2();
  }
  else if( ISNUMPAR(1) && ISQABSTRACTVIDEOSURFACE(1) )
  {
    QCamera_setViewfinder3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setViewfinder

$prototype=QCamera::LockTypes supportedLocks() const
$method=|QCamera::LockTypes|supportedLocks|

$prototype=void load()
$slotMethod=|void|load|

$prototype=void searchAndLock()
$internalSlotMethod=|void|searchAndLock,searchAndLock1|

$prototype=void searchAndLock(QCamera::LockTypes locks)
$internalSlotMethod=|void|searchAndLock,searchAndLock2|QCamera::LockTypes

//[1]void searchAndLock()
//[2]void searchAndLock(QCamera::LockTypes locks)

HB_FUNC_STATIC( QCAMERA_SEARCHANDLOCK )
{
  if( ISNUMPAR(0) )
  {
    QCamera_searchAndLock1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QCamera_searchAndLock2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=searchAndLock

$prototype=void start()
$slotMethod=|void|start|

$prototype=void stop()
$slotMethod=|void|stop|

$prototype=void unload()
$slotMethod=|void|unload|

$prototype=void unlock()
$internalSlotMethod=|void|unlock,unlock1|

$prototype=void unlock(QCamera::LockTypes locks)
$internalSlotMethod=|void|unlock,unlock2|QCamera::LockTypes

//[1]void unlock()
//[2]void unlock(QCamera::LockTypes locks)

HB_FUNC_STATIC( QCAMERA_UNLOCK )
{
  if( ISNUMPAR(0) )
  {
    QCamera_unlock1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QCamera_unlock2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=unlock

$prototype=QMultimedia::AvailabilityStatus availability() const override
$method=|QMultimedia::AvailabilityStatus|availability|

$prototype=QCameraViewfinderSettings viewfinderSettings() const
$method=5,5,0|QCameraViewfinderSettings|viewfinderSettings|

$prototype=void setViewfinderSettings(const QCameraViewfinderSettings &settings)
$method=5,5,0|void|setViewfinderSettings|const QCameraViewfinderSettings &

$prototype=QList<QCameraViewfinderSettings> supportedViewfinderSettings(const QCameraViewfinderSettings &settings = QCameraViewfinderSettings()) const
$method=5,5,0|QList<QCameraViewfinderSettings>|supportedViewfinderSettings|const QCameraViewfinderSettings &=QCameraViewfinderSettings()

$prototype=QList<QSize> supportedViewfinderResolutions(const QCameraViewfinderSettings &settings = QCameraViewfinderSettings()) const
$method=5,5,0|QList<QSize>|supportedViewfinderResolutions|const QCameraViewfinderSettings &=QCameraViewfinderSettings()

$prototype=QList<FrameRateRange> supportedViewfinderFrameRateRanges(const QCameraViewfinderSettings &settings = QCameraViewfinderSettings()) const
%% TODO: FrameRateRange is a structure
%% $method=5,5,0|QList<FrameRateRange>|supportedViewfinderFrameRateRanges|const QCameraViewfinderSettings &=QCameraViewfinderSettings()

$prototype=QList<QVideoFrame::PixelFormat> supportedViewfinderPixelFormats(const QCameraViewfinderSettings &settings = QCameraViewfinderSettings()) const
$method=5,5,0|QList<QVideoFrame::PixelFormat>|supportedViewfinderPixelFormats|const QCameraViewfinderSettings &=QCameraViewfinderSettings()

$prototype=static QList<QByteArray> availableDevices()
%% TODO: #if QT_DEPRECATED_SINCE(5, 3)
$staticMethod=|QList<QByteArray>|availableDevices|

$prototype=static QString deviceDescription(const QByteArray & device)
%% TODO: #if QT_DEPRECATED_SINCE(5, 3)
$staticMethod=|QString|deviceDescription|const QByteArray &

$beginSignals
$signal=|captureModeChanged(QCamera::CaptureModes)
$signal=|error(QCamera::Error)
$signal=|lockFailed()
$beginGroup
$signal=|lockStatusChanged(QCamera::LockStatus,QCamera::LockChangeReason)
$signal=|lockStatusChanged(QCamera::LockType,QCamera::LockStatus,QCamera::LockChangeReason)
$endGroup
$signal=|locked()
$signal=|stateChanged(QCamera::State)
$signal=|statusChanged(QCamera::Status)
$endSignals

#pragma ENDDUMP
