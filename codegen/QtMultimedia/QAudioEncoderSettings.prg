%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QAudioEncoderSettings

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD bitRate
   METHOD channelCount
   METHOD codec
   METHOD encodingMode
   METHOD encodingOption
   METHOD isNull
   METHOD quality
   METHOD sampleRate
   METHOD setBitRate
   METHOD setChannelCount
   METHOD setCodec
   METHOD setEncodingMode
   METHOD setEncodingOption
   METHOD setQuality
   METHOD setSampleRate

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAudioEncoderSettings()
$constructor=|new1|

$prototype=QAudioEncoderSettings(const QAudioEncoderSettings & other)
$constructor=|new2|const QAudioEncoderSettings &

//[1]QAudioEncoderSettings()
//[2]QAudioEncoderSettings(const QAudioEncoderSettings & other)

HB_FUNC_STATIC( QAUDIOENCODERSETTINGS_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QAUDIOENCODERSETTINGS_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQAUDIOENCODERSETTINGS(1) )
  {
    HB_FUNC_EXEC( QAUDIOENCODERSETTINGS_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=int bitRate() const
$method=|int|bitRate|

$prototype=int channelCount() const
$method=|int|channelCount|

$prototype=QString codec() const
$method=|QString|codec|

$prototype=QMultimedia::EncodingMode encodingMode() const
$method=|QMultimedia::EncodingMode|encodingMode|

$prototype=QVariant encodingOption(const QString & option) const
$method=|QVariant|encodingOption|const QString &

$prototype=bool isNull() const
$method=|bool|isNull|

$prototype=QMultimedia::EncodingQuality quality() const
$method=|QMultimedia::EncodingQuality|quality|

$prototype=int sampleRate() const
$method=|int|sampleRate|

$prototype=void setBitRate(int rate)
$method=|void|setBitRate|int

$prototype=void setChannelCount(int channels)
$method=|void|setChannelCount|int

$prototype=void setCodec(const QString & codec)
$method=|void|setCodec|const QString &

$prototype=void setEncodingMode(QMultimedia::EncodingMode mode)
$method=|void|setEncodingMode|QMultimedia::EncodingMode

$prototype=void setEncodingOption(const QString & option, const QVariant & value)
$method=|void|setEncodingOption|const QString &,const QVariant &

$prototype=void setQuality(QMultimedia::EncodingQuality quality)
$method=|void|setQuality|QMultimedia::EncodingQuality

$prototype=void setSampleRate(int rate)
$method=|void|setSampleRate|int

$extraMethods

#pragma ENDDUMP
