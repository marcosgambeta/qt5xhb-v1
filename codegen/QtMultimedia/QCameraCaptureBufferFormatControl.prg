$header

#include "hbclass.ch"

CLASS QCameraCaptureBufferFormatControl INHERIT QMediaObject

   METHOD delete
   METHOD bufferFormat
   METHOD setBufferFormat
   METHOD supportedBufferFormats

   METHOD onBufferFormatChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual QVideoFrame::PixelFormat bufferFormat() const = 0
$method=|QVideoFrame::PixelFormat|bufferFormat|

$prototype=virtual void setBufferFormat(QVideoFrame::PixelFormat format) = 0
$method=|void|setBufferFormat|QVideoFrame::PixelFormat

$prototype=virtual QList<QVideoFrame::PixelFormat> supportedBufferFormats() const = 0
$method=|QList<QVideoFrame::PixelFormat>|supportedBufferFormats|

#pragma ENDDUMP
