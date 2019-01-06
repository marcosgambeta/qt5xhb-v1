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

$beginClassFrom=QMediaControl

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QCameraImageCaptureControl(QObject *parent = Q_NULLPTR) [protected]

$prototype=~QCameraImageCaptureControl()
$deleteMethod

$prototype=virtual void cancelCapture() = 0
$virtualMethod=|void|cancelCapture|

$prototype=virtual int capture(const QString & fileName) = 0
$virtualMethod=|int|capture|const QString &

$prototype=virtual QCameraImageCapture::DriveMode driveMode() const = 0
$virtualMethod=|QCameraImageCapture::DriveMode|driveMode|

$prototype=virtual bool isReadyForCapture() const = 0
$virtualMethod=|bool|isReadyForCapture|

$prototype=virtual void setDriveMode(QCameraImageCapture::DriveMode mode) = 0
$virtualMethod=|void|setDriveMode|QCameraImageCapture::DriveMode

$beginSignals
$signal=|error(int,int,QString)
$signal=|imageAvailable(int,QVideoFrame)
$signal=|imageCaptured(int,QImage)
$signal=|imageExposed(int)
$signal=|imageMetadataAvailable(int,QString,QVariant)
$signal=|imageSaved(int,QString)
$signal=|readyForCaptureChanged(bool)
$endSignals

#pragma ENDDUMP
