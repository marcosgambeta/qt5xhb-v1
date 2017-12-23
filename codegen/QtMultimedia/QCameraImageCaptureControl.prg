$header

#include "hbclass.ch"

CLASS QCameraImageCaptureControl INHERIT QMediaControl

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

#pragma ENDDUMP
