%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QVIDEOENCODERSETTINGS
#endif

CLASS QVideoEncoderSettingsControl INHERIT QMediaControl

%%   METHOD new
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

$prototype=explicit QVideoEncoderSettingsControl(QObject *parent = Q_NULLPTR) (protected)

$prototype=virtual ~QVideoEncoderSettingsControl()
$deleteMethod

$prototype=virtual void setVideoSettings(const QVideoEncoderSettings & settings) = 0
$virtualMethod=|void|setVideoSettings|const QVideoEncoderSettings &

$prototype=virtual QList<qreal> supportedFrameRates(const QVideoEncoderSettings & settings, bool * continuous = Q_NULLPTR) const = 0
$virtualMethod=|QList<qreal>|supportedFrameRates|const QVideoEncoderSettings &,bool *=0

$prototype=virtual QList<QSize> supportedResolutions(const QVideoEncoderSettings & settings, bool * continuous = Q_NULLPTR) const = 0
$virtualMethod=|QList<QSize>|supportedResolutions|const QVideoEncoderSettings &,bool *=0

$prototype=virtual QStringList supportedVideoCodecs() const = 0
$virtualMethod=|QStringList|supportedVideoCodecs|

$prototype=virtual QString videoCodecDescription(const QString & codecName) const = 0
$virtualMethod=|QString|videoCodecDescription|const QString &

$prototype=virtual QVideoEncoderSettings videoSettings() const = 0
$virtualMethod=|QVideoEncoderSettings|videoSettings|

#pragma ENDDUMP
