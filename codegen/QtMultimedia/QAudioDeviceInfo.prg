%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

   METHOD new
   METHOD delete

   METHOD deviceName
   METHOD isFormatSupported
   METHOD isNull
   METHOD nearestFormat
   METHOD preferredFormat
   METHOD supportedByteOrders
   METHOD supportedChannelCounts
   METHOD supportedCodecs
   METHOD supportedSampleRates
   METHOD supportedSampleSizes
   METHOD supportedSampleTypes
   METHOD availableDevices
   METHOD defaultInputDevice
   METHOD defaultOutputDevice

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAudioDeviceInfo ()
$internalConstructor=|new1|

$prototype=QAudioDeviceInfo ( const QAudioDeviceInfo & other )
$internalConstructor=|new2|const QAudioDeviceInfo &

$prototype=QAudioDeviceInfo(const QString &realm, const QByteArray &handle, QAudio::Mode mode) (private)

//[1]QAudioDeviceInfo ()
//[2]QAudioDeviceInfo ( const QAudioDeviceInfo & other )

HB_FUNC_STATIC( QAUDIODEVICEINFO_NEW )
{
  if( ISNUMPAR(0) )
  {
    QAudioDeviceInfo_new1();
  }
  else if( ISNUMPAR(1) && ISQAUDIODEVICEINFO(1) )
  {
    QAudioDeviceInfo_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QAudioDeviceInfo()
$deleteMethod

$prototype=QString deviceName () const
$method=|QString|deviceName|

$prototype=bool isFormatSupported ( const QAudioFormat & format ) const
$method=|bool|isFormatSupported|const QAudioFormat &

$prototype=bool isNull () const
$method=|bool|isNull|

$prototype=QAudioFormat nearestFormat ( const QAudioFormat & format ) const
$method=|QAudioFormat|nearestFormat|const QAudioFormat &

$prototype=QAudioFormat preferredFormat () const
$method=|QAudioFormat|preferredFormat|

$prototype=QList<QAudioFormat::Endian> supportedByteOrders () const
$method=|QList<QAudioFormat::Endian>|supportedByteOrders|

$prototype=QList<int> supportedChannelCounts () const
$method=|QList<int>|supportedChannelCounts|

$prototype=QStringList supportedCodecs () const
$method=|QStringList|supportedCodecs|

$prototype=QList<int> supportedSampleRates () const
$method=|QList<int>|supportedSampleRates|

$prototype=QList<int> supportedSampleSizes () const
$method=|QList<int>|supportedSampleSizes|

$prototype=QList<QAudioFormat::SampleType> supportedSampleTypes () const
$method=|QList<QAudioFormat::SampleType>|supportedSampleTypes|

$prototype=static QList<QAudioDeviceInfo> availableDevices ( QAudio::Mode mode )
$staticMethod=|QList<QAudioDeviceInfo>|availableDevices|QAudio::Mode

$prototype=static QAudioDeviceInfo defaultInputDevice ()
$staticMethod=|QAudioDeviceInfo|defaultInputDevice|

$prototype=static QAudioDeviceInfo defaultOutputDevice ()
$staticMethod=|QAudioDeviceInfo|defaultOutputDevice|

$prototype=QString realm() const (private)

$prototype=QByteArray handle() const (private)

$prototype=QAudio::Mode mode() const (private)

$extraMethods

#pragma ENDDUMP
