$header

#include "hbclass.ch"

CLASS QCameraCaptureBufferFormatControl INHERIT QMediaObject

   DATA self_destruction INIT .F.

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

/*
virtual QVideoFrame::PixelFormat bufferFormat() const = 0
*/
$method=|QVideoFrame::PixelFormat|bufferFormat|

/*
virtual void setBufferFormat(QVideoFrame::PixelFormat format) = 0
*/
$method=|void|setBufferFormat|QVideoFrame::PixelFormat

/*
virtual QList<QVideoFrame::PixelFormat> supportedBufferFormats() const = 0
*/
$method=|QList<QVideoFrame::PixelFormat>|supportedBufferFormats|

#pragma ENDDUMP
