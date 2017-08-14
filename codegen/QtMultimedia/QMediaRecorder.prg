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

   DATA self_destruction INIT .F.

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

/*
QMediaRecorder(QMediaObject * mediaObject, QObject * parent = 0)
*/
$constructor=|new|QMediaObject *,QObject *=0

$deleteMethod

/*
QUrl actualLocation() const
*/
$method=|QUrl|actualLocation|

/*
QString audioCodecDescription(const QString & codec) const
*/
$method=|QString|audioCodecDescription|const QString &

/*
QAudioEncoderSettings audioSettings() const
*/
$method=|QAudioEncoderSettings|audioSettings|

/*
QMultimedia::AvailabilityStatus availability() const
*/
$method=|QMultimedia::AvailabilityStatus|availability|

/*
QStringList availableMetaData() const
*/
$method=|QStringList|availableMetaData|

/*
QString containerDescription(const QString & format) const
*/
$method=|QString|containerDescription|const QString &

/*
QString containerFormat() const
*/
$method=|QString|containerFormat|

/*
qint64 duration() const
*/
$method=|qint64|duration|

/*
Error error() const
*/
$method=|QMediaPlaylist::Error|error|

/*
QString errorString() const
*/
$method=|QString|errorString|

/*
bool isAvailable() const
*/
$method=|bool|isAvailable|

/*
bool isMetaDataAvailable() const
*/
$method=|bool|isMetaDataAvailable|

/*
bool isMetaDataWritable() const
*/
$method=|bool|isMetaDataWritable|

/*
bool isMuted() const
*/
$method=|bool|isMuted|

/*
QVariant metaData(const QString & key) const
*/
$method=|QVariant|metaData|const QString &

/*
QUrl outputLocation() const
*/
$method=|QUrl|outputLocation|

/*
void setAudioSettings(const QAudioEncoderSettings & settings)
*/
$method=|void|setAudioSettings|const QAudioEncoderSettings &

/*
void setContainerFormat(const QString & container)
*/
$method=|void|setContainerFormat|const QString &

/*
void setEncodingSettings(const QAudioEncoderSettings & audio, const QVideoEncoderSettings & video = QVideoEncoderSettings(), const QString & container = QString())
*/
$method=|void|setEncodingSettings|const QAudioEncoderSettings &,const QVideoEncoderSettings &=QVideoEncoderSettings(),const QString &=QString()

/*
void setMetaData(const QString & key, const QVariant & value)
*/
$method=|void|setMetaData|const QString &,const QVariant &

/*
bool setOutputLocation(const QUrl & location)
*/
$method=|bool|setOutputLocation|const QUrl &

/*
void setVideoSettings(const QVideoEncoderSettings & settings)
*/
$method=|void|setVideoSettings|const QVideoEncoderSettings &

/*
State state() const
*/
$method=|QMediaRecorder::State|state|

/*
Status status() const
*/
$method=|QMediaRecorder::Status|status|

/*
QStringList supportedAudioCodecs() const
*/
$method=|QStringList|supportedAudioCodecs|

/*
QList<int> supportedAudioSampleRates(const QAudioEncoderSettings & settings = QAudioEncoderSettings(), bool * continuous = 0) const
*/
$method=|QList<int>|supportedAudioSampleRates|const QAudioEncoderSettings &=QAudioEncoderSettings(),bool *=0

/*
QStringList supportedContainers() const
*/
$method=|QStringList|supportedContainers|

/*
QList<qreal> supportedFrameRates(const QVideoEncoderSettings & settings = QVideoEncoderSettings(), bool * continuous = 0) const
*/
$method=|QList<qreal>|supportedFrameRates|const QVideoEncoderSettings &=QVideoEncoderSettings(),bool *=0

/*
QList<QSize> supportedResolutions(const QVideoEncoderSettings & settings = QVideoEncoderSettings(), bool * continuous = 0) const
*/
$method=|QList<QSize>|supportedResolutions|const QVideoEncoderSettings &=QVideoEncoderSettings(),bool *=0

/*
QStringList supportedVideoCodecs() const
*/
$method=|QStringList|supportedVideoCodecs|

/*
QString videoCodecDescription(const QString & codec) const
*/
$method=|QString|videoCodecDescription|const QString &

/*
QVideoEncoderSettings videoSettings() const
*/
$method=|QVideoEncoderSettings|videoSettings|

/*
qreal volume() const
*/
$method=|qreal|volume|

/*
virtual QMediaObject * mediaObject() const
*/
$method=|QMediaObject *|mediaObject|

/*
void pause()
*/
$method=|void|pause|

/*
void record()
*/
$method=|void|record|

/*
void setMuted(bool muted)
*/
$method=|void|setMuted|bool

/*
void setVolume(qreal volume)
*/
$method=|void|setVolume|qreal

/*
void stop()
*/
$method=|void|stop|

#pragma ENDDUMP
