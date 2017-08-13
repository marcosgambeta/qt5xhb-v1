$header

#include "hbclass.ch"

CLASS QCameraImageCaptureControl INHERIT QMediaControl

   DATA self_destruction INIT .F.

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

$deleteMethod

/*
virtual void cancelCapture() = 0
*/
$method=|void|cancelCapture|

/*
virtual int capture(const QString & fileName) = 0
*/
$method=|int|capture|const QString &

/*
virtual QCameraImageCapture::DriveMode driveMode() const = 0
*/
$method=|QCameraImageCapture::DriveMode|driveMode|

/*
virtual bool isReadyForCapture() const = 0
*/
$method=|bool|isReadyForCapture|

/*
virtual void setDriveMode(QCameraImageCapture::DriveMode mode) = 0
*/
$method=|void|setDriveMode|QCameraImageCapture::DriveMode

#pragma ENDDUMP
