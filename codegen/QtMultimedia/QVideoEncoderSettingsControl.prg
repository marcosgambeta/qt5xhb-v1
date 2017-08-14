$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QVIDEOENCODERSETTINGS
#endif

CLASS QVideoEncoderSettingsControl INHERIT QMediaControl

   DATA self_destruction INIT .F.

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

/*
virtual void setVideoSettings(const QVideoEncoderSettings & settings) = 0
*/
$method=|void|setVideoSettings|const QVideoEncoderSettings &

/*
virtual QList<qreal> supportedFrameRates(const QVideoEncoderSettings & settings, bool * continuous = 0) const = 0
*/
$method=|QList<qreal>|supportedFrameRates|const QVideoEncoderSettings &,bool *=0

/*
virtual QList<QSize> supportedResolutions(const QVideoEncoderSettings & settings, bool * continuous = 0) const = 0
*/
$method=|QList<QSize>|supportedResolutions|const QVideoEncoderSettings &,bool *=0

/*
virtual QStringList supportedVideoCodecs() const = 0
*/
$method=|QStringList|supportedVideoCodecs|

/*
virtual QString videoCodecDescription(const QString & codec) const = 0
*/
$method=|QString|videoCodecDescription|const QString &

/*
virtual QVideoEncoderSettings videoSettings() const = 0
*/
$method=|QVideoEncoderSettings|videoSettings|

#pragma ENDDUMP
