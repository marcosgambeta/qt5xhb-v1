%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QCameraImageCaptureControl INHERIT QMediaControl

%%   METHOD new
   METHOD delete

   METHOD cancelCapture
   METHOD capture
   METHOD driveMode
   METHOD isReadyForCapture
   METHOD setDriveMode

   METHOD onError
   METHOD onImageAvailable
   METHOD onImageCaptured
   METHOD onImageExposed
   METHOD onImageMetadataAvailable
   METHOD onImageSaved
   METHOD onReadyForCaptureChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QCameraImageCaptureControl(QObject *parent = Q_NULLPTR) (protected)

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

$connectSignalFunction

$signalMethod=|error(int,int,QString)
$signalMethod=|imageAvailable(int,QVideoFrame)
$signalMethod=|imageCaptured(int,QImage)
$signalMethod=|imageExposed(int)
$signalMethod=|imageMetadataAvailable(int,QString,QVariant)
$signalMethod=|imageSaved(int,QString)
$signalMethod=|readyForCaptureChanged(bool)

#pragma ENDDUMP
