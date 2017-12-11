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
$method=|QAudioEncoderSettings|audioSettings|

$prototype=virtual QString codecDescription(const QString & codec) const = 0
$method=|QString|codecDescription|const QString &

$prototype=virtual void setAudioSettings(const QAudioEncoderSettings & settings) = 0
$method=|void|setAudioSettings|const QAudioEncoderSettings &

$prototype=virtual QStringList supportedAudioCodecs() const = 0
$method=|QStringList|supportedAudioCodecs|

$prototype=virtual QList<int> supportedSampleRates(const QAudioEncoderSettings & settings, bool * continuous = 0) const = 0
$method=|QList<int>|supportedSampleRates|const QAudioEncoderSettings &,bool *=0

#pragma ENDDUMP
