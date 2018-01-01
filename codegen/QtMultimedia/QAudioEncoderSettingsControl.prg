%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QAUDIOENCODERSETTINGS
#endif

CLASS QAudioEncoderSettingsControl INHERIT QMediaControl

   METHOD delete
   METHOD audioSettings
   METHOD codecDescription
   METHOD setAudioSettings
   METHOD supportedAudioCodecs
   METHOD supportedSampleRates

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual QAudioEncoderSettings audioSettings() const = 0
$virtualMethod=|QAudioEncoderSettings|audioSettings|

$prototype=virtual QString codecDescription(const QString & codec) const = 0
$virtualMethod=|QString|codecDescription|const QString &

$prototype=virtual void setAudioSettings(const QAudioEncoderSettings & settings) = 0
$virtualMethod=|void|setAudioSettings|const QAudioEncoderSettings &

$prototype=virtual QStringList supportedAudioCodecs() const = 0
$virtualMethod=|QStringList|supportedAudioCodecs|

$prototype=virtual QList<int> supportedSampleRates(const QAudioEncoderSettings & settings, bool * continuous = 0) const = 0
$virtualMethod=|QList<int>|supportedSampleRates|const QAudioEncoderSettings &,bool *=0

#pragma ENDDUMP
