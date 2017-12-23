$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QIMAGEENCODERSETTINGS
#endif

CLASS QImageEncoderControl INHERIT QMediaControl

   METHOD delete
   METHOD supportedImageCodecs
   METHOD imageCodecDescription
   METHOD supportedResolutions
   METHOD imageSettings
   METHOD setImageSettings

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual QStringList supportedImageCodecs() const = 0
$virtualMethod=|QStringList|supportedImageCodecs|

$prototype=virtual QString imageCodecDescription(const QString &codecName) const = 0
$virtualMethod=|QString|imageCodecDescription|const QString &

$prototype=virtual QList<QSize> supportedResolutions(const QImageEncoderSettings &settings,bool *continuous = 0) const = 0
$virtualMethod=|QList<QSize>|supportedResolutions|const QImageEncoderSettings &,bool *=0

$prototype=virtual QImageEncoderSettings imageSettings() const = 0
$virtualMethod=|QImageEncoderSettings|imageSettings|

$prototype=virtual void setImageSettings(const QImageEncoderSettings &settings) = 0
$virtualMethod=|void|setImageSettings|const QImageEncoderSettings &

#pragma ENDDUMP
