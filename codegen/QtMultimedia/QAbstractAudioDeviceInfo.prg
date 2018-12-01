%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual QAudioFormat preferredFormat() const = 0
$virtualMethod=|QAudioFormat|preferredFormat|

$prototype=virtual bool isFormatSupported(const QAudioFormat &format) const = 0
$virtualMethod=|bool|isFormatSupported|const QAudioFormat &

$prototype=virtual QString deviceName() const = 0
$virtualMethod=|QString|deviceName|

$prototype=virtual QStringList supportedCodecs() = 0
$virtualMethod=|QStringList|supportedCodecs|

$prototype=virtual QList<int> supportedSampleRates() = 0
$virtualMethod=|QList<int>|supportedSampleRates|

$prototype=virtual QList<int> supportedChannelCounts() = 0
$virtualMethod=|QList<int>|supportedChannelCounts|

$prototype=virtual QList<int> supportedSampleSizes() = 0
$virtualMethod=|QList<int>|supportedSampleSizes|

$prototype=virtual QList<QAudioFormat::Endian> supportedByteOrders() = 0
$virtualMethod=|QList<QAudioFormat::Endian>|supportedByteOrders|

$prototype=virtual QList<QAudioFormat::SampleType> supportedSampleTypes() = 0
$virtualMethod=|QList<QAudioFormat::SampleType>|supportedSampleTypes|

#pragma ENDDUMP
