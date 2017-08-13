$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QAUDIOFORMAT
#endif

CLASS QAudioDeviceInfo

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
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

/*
QAudioDeviceInfo ()
*/
$constructor=|new1|

/*
QAudioDeviceInfo ( const QAudioDeviceInfo & other )
*/
$constructor=|new2|const QAudioDeviceInfo &

//[1]QAudioDeviceInfo ()
//[2]QAudioDeviceInfo ( const QAudioDeviceInfo & other )

HB_FUNC_STATIC( QAUDIODEVICEINFO_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QAUDIODEVICEINFO_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQAUDIODEVICEINFO(1) )
  {
    HB_FUNC_EXEC( QAUDIODEVICEINFO_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QString deviceName () const
*/
$method=|QString|deviceName|

/*
bool isFormatSupported ( const QAudioFormat & settings ) const
*/
$method=|bool|isFormatSupported|const QAudioFormat &

/*
bool isNull () const
*/
$method=|bool|isNull|

/*
QAudioFormat nearestFormat ( const QAudioFormat & settings ) const
*/
$method=|QAudioFormat|nearestFormat|const QAudioFormat &

/*
QAudioFormat preferredFormat () const
*/
$method=|QAudioFormat|preferredFormat|

/*
QList<QAudioFormat::Endian> supportedByteOrders () const
*/
$method=|QList<QAudioFormat::Endian>|supportedByteOrders|

/*
QList<int> supportedChannelCounts () const
*/
$method=|QList<int>|supportedChannelCounts|

/*
QStringList supportedCodecs () const
*/
$method=|QStringList|supportedCodecs|

/*
QList<int> supportedSampleRates () const
*/
$method=|QList<int>|supportedSampleRates|

/*
QList<int> supportedSampleSizes () const
*/
$method=|QList<int>|supportedSampleSizes|

/*
QList<QAudioFormat::SampleType> supportedSampleTypes () const
*/
$method=|QList<QAudioFormat::SampleType>|supportedSampleTypes|

/*
static QList<QAudioDeviceInfo> availableDevices ( QAudio::Mode mode )
*/
$staticMethod=|QList<QAudioDeviceInfo>|availableDevices|QAudio::Mode

/*
static QAudioDeviceInfo defaultInputDevice ()
*/
$staticMethod=|QAudioDeviceInfo|defaultInputDevice|

/*
static QAudioDeviceInfo defaultOutputDevice ()
*/
$staticMethod=|QAudioDeviceInfo|defaultOutputDevice|

$extraMethods

#pragma ENDDUMP
