%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QCameraCaptureBufferFormatControl INHERIT QMediaObject

%%   METHOD new
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

$prototype=explicit QCameraCaptureBufferFormatControl(QObject *parent = Q_NULLPTR) (protected)

$prototype=~QCameraCaptureBufferFormatControl()
$deleteMethod

$prototype=virtual QVideoFrame::PixelFormat bufferFormat() const = 0
$virtualMethod=|QVideoFrame::PixelFormat|bufferFormat|

$prototype=virtual void setBufferFormat(QVideoFrame::PixelFormat format) = 0
$virtualMethod=|void|setBufferFormat|QVideoFrame::PixelFormat

$prototype=virtual QList<QVideoFrame::PixelFormat> supportedBufferFormats() const = 0
$virtualMethod=|QList<QVideoFrame::PixelFormat>|supportedBufferFormats|

#pragma ENDDUMP

%% Q_SIGNALS:
%% void bufferFormatChanged(QVideoFrame::PixelFormat);
