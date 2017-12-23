$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QVIDEOENCODERSETTINGS
#endif

CLASS QVideoEncoderSettingsControl INHERIT QMediaControl

   METHOD delete
   METHOD setVideoSettings
   METHOD supportedFrameRates
   METHOD supportedResolutions
   METHOD supportedVideoCodecs
   METHOD videoCodecDescription
   METHOD videoSettings

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual void setVideoSettings(const QVideoEncoderSettings & settings) = 0
$virtualMethod=|void|setVideoSettings|const QVideoEncoderSettings &

$prototype=virtual QList<qreal> supportedFrameRates(const QVideoEncoderSettings & settings, bool * continuous = 0) const = 0
$virtualMethod=|QList<qreal>|supportedFrameRates|const QVideoEncoderSettings &,bool *=0

$prototype=virtual QList<QSize> supportedResolutions(const QVideoEncoderSettings & settings, bool * continuous = 0) const = 0
$virtualMethod=|QList<QSize>|supportedResolutions|const QVideoEncoderSettings &,bool *=0

$prototype=virtual QStringList supportedVideoCodecs() const = 0
$virtualMethod=|QStringList|supportedVideoCodecs|

$prototype=virtual QString videoCodecDescription(const QString & codec) const = 0
$virtualMethod=|QString|videoCodecDescription|const QString &

$prototype=virtual QVideoEncoderSettings videoSettings() const = 0
$virtualMethod=|QVideoEncoderSettings|videoSettings|

#pragma ENDDUMP
