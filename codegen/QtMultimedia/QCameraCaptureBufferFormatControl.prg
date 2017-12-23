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
$virtualMethod=|QVideoFrame::PixelFormat|bufferFormat|

$prototype=virtual void setBufferFormat(QVideoFrame::PixelFormat format) = 0
$virtualMethod=|void|setBufferFormat|QVideoFrame::PixelFormat

$prototype=virtual QList<QVideoFrame::PixelFormat> supportedBufferFormats() const = 0
$virtualMethod=|QList<QVideoFrame::PixelFormat>|supportedBufferFormats|

#pragma ENDDUMP
