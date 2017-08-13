$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QAUDIOENCODERSETTINGS
#endif

CLASS QAudioEncoderSettingsControl INHERIT QMediaControl

   DATA self_destruction INIT .F.

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

/*
virtual QAudioEncoderSettings audioSettings() const = 0
*/
$method=|QAudioEncoderSettings|audioSettings|

/*
virtual QString codecDescription(const QString & codec) const = 0
*/
$method=|QString|codecDescription|const QString &

/*
virtual void setAudioSettings(const QAudioEncoderSettings & settings) = 0
*/
$method=|void|setAudioSettings|const QAudioEncoderSettings &

/*
virtual QStringList supportedAudioCodecs() const = 0
*/
$method=|QStringList|supportedAudioCodecs|

/*
virtual QList<int> supportedSampleRates(const QAudioEncoderSettings & settings, bool * continuous = 0) const = 0
*/
$method=|QList<int>|supportedSampleRates|const QAudioEncoderSettings &,bool *=0

#pragma ENDDUMP
