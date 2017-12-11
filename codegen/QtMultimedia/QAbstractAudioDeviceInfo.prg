$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QAUDIOFORMAT
#endif

CLASS QAbstractAudioDeviceInfo INHERIT QObject

   METHOD delete
   METHOD preferredFormat
   METHOD isFormatSupported
   METHOD deviceName
   METHOD supportedCodecs
   METHOD supportedSampleRates
   METHOD supportedChannelCounts
   METHOD supportedSampleSizes
   METHOD supportedByteOrders
   METHOD supportedSampleTypes

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual QAudioFormat preferredFormat() const = 0
$method=|QAudioFormat|preferredFormat|

$prototype=virtual bool isFormatSupported(const QAudioFormat &format) const = 0
$method=|bool|isFormatSupported|const QAudioFormat &

$prototype=virtual QString deviceName() const = 0
$method=|QString|deviceName|

$prototype=virtual QStringList supportedCodecs() = 0
$method=|QStringList|supportedCodecs|

$prototype=virtual QList<int> supportedSampleRates() = 0
$method=|QList<int>|supportedSampleRates|

$prototype=virtual QList<int> supportedChannelCounts() = 0
$method=|QList<int>|supportedChannelCounts|

$prototype=virtual QList<int> supportedSampleSizes() = 0
$method=|QList<int>|supportedSampleSizes|

$prototype=virtual QList<QAudioFormat::Endian> supportedByteOrders() = 0
$method=|QList<QAudioFormat::Endian>|supportedByteOrders|

$prototype=virtual QList<QAudioFormat::SampleType> supportedSampleTypes() = 0
$method=|QList<QAudioFormat::SampleType>|supportedSampleTypes|

#pragma ENDDUMP
