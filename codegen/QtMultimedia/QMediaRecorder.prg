$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
REQUEST QAUDIOENCODERSETTINGS
REQUEST QVARIANT
REQUEST QSIZE
REQUEST QVIDEOENCODERSETTINGS
REQUEST QMEDIAOBJECT
#endif

CLASS QMediaRecorder INHERIT QObject,QMediaBindableInterface

   METHOD new
   METHOD delete
   METHOD actualLocation
   METHOD audioCodecDescription
   METHOD audioSettings
   METHOD availability
   METHOD availableMetaData
   METHOD containerDescription
   METHOD containerFormat
   METHOD duration
   METHOD error
   METHOD errorString
   METHOD isAvailable
   METHOD isMetaDataAvailable
   METHOD isMetaDataWritable
   METHOD isMuted
   METHOD metaData
   METHOD outputLocation
   METHOD setAudioSettings
   METHOD setContainerFormat
   METHOD setEncodingSettings
   METHOD setMetaData
   METHOD setOutputLocation
   METHOD setVideoSettings
   METHOD state
   METHOD status
   METHOD supportedAudioCodecs
   METHOD supportedAudioSampleRates
   METHOD supportedContainers
   METHOD supportedFrameRates
   METHOD supportedResolutions
   METHOD supportedVideoCodecs
   METHOD videoCodecDescription
   METHOD videoSettings
   METHOD volume
   METHOD mediaObject
   METHOD pause
   METHOD record
   METHOD setMuted
   METHOD setVolume
   METHOD stop

   METHOD onActualLocationChanged
   METHOD onAvailabilityChanged1
   METHOD onAvailabilityChanged2
   METHOD onDurationChanged
   METHOD onError
   METHOD onMetaDataAvailableChanged
   METHOD onMetaDataChanged1
   METHOD onMetaDataChanged2
   METHOD onMetaDataWritableChanged
   METHOD onMutedChanged
   METHOD onStateChanged
   METHOD onStatusChanged
   METHOD onVolumeChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QUrl>

$prototype=QMediaRecorder(QMediaObject * mediaObject, QObject * parent = 0)
$constructor=|new|QMediaObject *,QObject *=0

$deleteMethod

$prototype=QUrl actualLocation() const
$method=|QUrl|actualLocation|

$prototype=QString audioCodecDescription(const QString & codec) const
$method=|QString|audioCodecDescription|const QString &

$prototype=QAudioEncoderSettings audioSettings() const
$method=|QAudioEncoderSettings|audioSettings|

$prototype=QMultimedia::AvailabilityStatus availability() const
$method=|QMultimedia::AvailabilityStatus|availability|

$prototype=QStringList availableMetaData() const
$method=|QStringList|availableMetaData|

$prototype=QString containerDescription(const QString & format) const
$method=|QString|containerDescription|const QString &

$prototype=QString containerFormat() const
$method=|QString|containerFormat|

$prototype=qint64 duration() const
$method=|qint64|duration|

$prototype=Error error() const
$method=|QMediaPlaylist::Error|error|

$prototype=QString errorString() const
$method=|QString|errorString|

$prototype=bool isAvailable() const
$method=|bool|isAvailable|

$prototype=bool isMetaDataAvailable() const
$method=|bool|isMetaDataAvailable|

$prototype=bool isMetaDataWritable() const
$method=|bool|isMetaDataWritable|

$prototype=bool isMuted() const
$method=|bool|isMuted|

$prototype=QVariant metaData(const QString & key) const
$method=|QVariant|metaData|const QString &

$prototype=QUrl outputLocation() const
$method=|QUrl|outputLocation|

$prototype=void setAudioSettings(const QAudioEncoderSettings & settings)
$method=|void|setAudioSettings|const QAudioEncoderSettings &

$prototype=void setContainerFormat(const QString & container)
$method=|void|setContainerFormat|const QString &

$prototype=void setEncodingSettings(const QAudioEncoderSettings & audio, const QVideoEncoderSettings & video = QVideoEncoderSettings(), const QString & container = QString())
$method=|void|setEncodingSettings|const QAudioEncoderSettings &,const QVideoEncoderSettings &=QVideoEncoderSettings(),const QString &=QString()

$prototype=void setMetaData(const QString & key, const QVariant & value)
$method=|void|setMetaData|const QString &,const QVariant &

$prototype=bool setOutputLocation(const QUrl & location)
$method=|bool|setOutputLocation|const QUrl &

$prototype=void setVideoSettings(const QVideoEncoderSettings & settings)
$method=|void|setVideoSettings|const QVideoEncoderSettings &

$prototype=State state() const
$method=|QMediaRecorder::State|state|

$prototype=Status status() const
$method=|QMediaRecorder::Status|status|

$prototype=QStringList supportedAudioCodecs() const
$method=|QStringList|supportedAudioCodecs|

$prototype=QList<int> supportedAudioSampleRates(const QAudioEncoderSettings & settings = QAudioEncoderSettings(), bool * continuous = 0) const
$method=|QList<int>|supportedAudioSampleRates|const QAudioEncoderSettings &=QAudioEncoderSettings(),bool *=0

$prototype=QStringList supportedContainers() const
$method=|QStringList|supportedContainers|

$prototype=QList<qreal> supportedFrameRates(const QVideoEncoderSettings & settings = QVideoEncoderSettings(), bool * continuous = 0) const
$method=|QList<qreal>|supportedFrameRates|const QVideoEncoderSettings &=QVideoEncoderSettings(),bool *=0

$prototype=QList<QSize> supportedResolutions(const QVideoEncoderSettings & settings = QVideoEncoderSettings(), bool * continuous = 0) const
$method=|QList<QSize>|supportedResolutions|const QVideoEncoderSettings &=QVideoEncoderSettings(),bool *=0

$prototype=QStringList supportedVideoCodecs() const
$method=|QStringList|supportedVideoCodecs|

$prototype=QString videoCodecDescription(const QString & codec) const
$method=|QString|videoCodecDescription|const QString &

$prototype=QVideoEncoderSettings videoSettings() const
$method=|QVideoEncoderSettings|videoSettings|

$prototype=qreal volume() const
$method=|qreal|volume|

$prototype=virtual QMediaObject * mediaObject() const
$method=|QMediaObject *|mediaObject|

$prototype=void pause()
$method=|void|pause|

$prototype=void record()
$method=|void|record|

$prototype=void setMuted(bool muted)
$method=|void|setMuted|bool

$prototype=void setVolume(qreal volume)
$method=|void|setVolume|qreal

$prototype=void stop()
$method=|void|stop|

#pragma ENDDUMP
