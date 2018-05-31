%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject,QMediaBindableInterface

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

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QUrl>

$prototype=explicit QMediaRecorder(QMediaObject * mediaObject, QObject * parent = Q_NULLPTR)
$constructor=|new|QMediaObject *,QObject *=0

$prototype=QMediaRecorder(QMediaRecorderPrivate &dd, QMediaObject *mediaObject, QObject *parent = Q_NULLPTR) (protected)

$prototype=~QMediaRecorder()
$deleteMethod

%%
%% Q_PROPERTY(QMediaRecorder::State state READ state NOTIFY stateChanged)
%%

$prototype=State state() const
$method=|QMediaRecorder::State|state|

%%
%% Q_PROPERTY(QMediaRecorder::Status status READ status NOTIFY statusChanged)
%%

$prototype=Status status() const
$method=|QMediaRecorder::Status|status|

%%
%% Q_PROPERTY(qint64 duration READ duration NOTIFY durationChanged)
%%

$prototype=qint64 duration() const
$method=|qint64|duration|

%%
%% Q_PROPERTY(QUrl outputLocation READ outputLocation WRITE setOutputLocation)
%%

$prototype=QUrl outputLocation() const
$method=|QUrl|outputLocation|

$prototype=bool setOutputLocation(const QUrl & location)
$method=|bool|setOutputLocation|const QUrl &

%%
%% Q_PROPERTY(QUrl actualLocation READ actualLocation NOTIFY actualLocationChanged)
%%

$prototype=QUrl actualLocation() const
$method=|QUrl|actualLocation|

%%
%% Q_PROPERTY(bool muted READ isMuted WRITE setMuted NOTIFY mutedChanged)
%%

$prototype=bool isMuted() const
$method=|bool|isMuted|

$prototype=void setMuted(bool muted)
$slotMethod=|void|setMuted|bool

%%
%% Q_PROPERTY(qreal volume READ volume WRITE setVolume NOTIFY volumeChanged)
%%

$prototype=qreal volume() const
$method=|qreal|volume|

$prototype=void setVolume(qreal volume)
$slotMethod=|void|setVolume|qreal

%%
%% Q_PROPERTY(bool metaDataAvailable READ isMetaDataAvailable NOTIFY metaDataAvailableChanged)
%%

$prototype=bool isMetaDataAvailable() const
$method=|bool|isMetaDataAvailable|

%%
%% Q_PROPERTY(bool metaDataWritable READ isMetaDataWritable NOTIFY metaDataWritableChanged)
%%

$prototype=bool isMetaDataWritable() const
$method=|bool|isMetaDataWritable|

%%
%%
%%

$prototype=QString audioCodecDescription(const QString & codecName) const
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

$prototype=Error error() const
$method=|QMediaPlaylist::Error|error|

$prototype=QString errorString() const
$method=|QString|errorString|

$prototype=bool isAvailable() const
$method=|bool|isAvailable|

$prototype=QVariant metaData(const QString & key) const
$method=|QVariant|metaData|const QString &

$prototype=void setAudioSettings(const QAudioEncoderSettings & audioSettings)
$method=|void|setAudioSettings|const QAudioEncoderSettings &

$prototype=void setContainerFormat(const QString & container)
$method=|void|setContainerFormat|const QString &

$prototype=void setEncodingSettings(const QAudioEncoderSettings & audioSettings, const QVideoEncoderSettings & videoSettings = QVideoEncoderSettings(), const QString & containerMimeType = QString())
$method=|void|setEncodingSettings|const QAudioEncoderSettings &,const QVideoEncoderSettings &=QVideoEncoderSettings(),const QString &=QString()

$prototype=void setMetaData(const QString & key, const QVariant & value)
$method=|void|setMetaData|const QString &,const QVariant &

$prototype=void setVideoSettings(const QVideoEncoderSettings & videoSettings)
$method=|void|setVideoSettings|const QVideoEncoderSettings &

$prototype=QStringList supportedAudioCodecs() const
$method=|QStringList|supportedAudioCodecs|

$prototype=QList<int> supportedAudioSampleRates(const QAudioEncoderSettings & settings = QAudioEncoderSettings(), bool * continuous = Q_NULLPTR) const
$method=|QList<int>|supportedAudioSampleRates|const QAudioEncoderSettings &=QAudioEncoderSettings(),bool *=0

$prototype=QStringList supportedContainers() const
$method=|QStringList|supportedContainers|

$prototype=QList<qreal> supportedFrameRates(const QVideoEncoderSettings & settings = QVideoEncoderSettings(), bool * continuous = Q_NULLPTR) const
$method=|QList<qreal>|supportedFrameRates|const QVideoEncoderSettings &=QVideoEncoderSettings(),bool *=0

$prototype=QList<QSize> supportedResolutions(const QVideoEncoderSettings & settings = QVideoEncoderSettings(), bool * continuous = Q_NULLPTR) const
$method=|QList<QSize>|supportedResolutions|const QVideoEncoderSettings &=QVideoEncoderSettings(),bool *=0

$prototype=QStringList supportedVideoCodecs() const
$method=|QStringList|supportedVideoCodecs|

$prototype=QString videoCodecDescription(const QString & codecName) const
$method=|QString|videoCodecDescription|const QString &

$prototype=QVideoEncoderSettings videoSettings() const
$method=|QVideoEncoderSettings|videoSettings|

$prototype=virtual QMediaObject *mediaObject() const override
%% TODO: is virtual ?
$virtualMethod=|QMediaObject *|mediaObject|

$prototype=void pause()
$slotMethod=|void|pause|

$prototype=void record()
$slotMethod=|void|record|

$prototype=void stop()
$slotMethod=|void|stop|

$prototype=bool setMediaObject(QMediaObject *object) override (protected)

$beginSignals
$signal=|actualLocationChanged(QUrl)
$beginGroup
$signal=|availabilityChanged(bool)
$signal=|availabilityChanged(QMultimedia::AvailabilityStatus)
$endGroup
$signal=|durationChanged(qint64)
$signal=|error(QMediaRecorder::Error)
$signal=|metaDataAvailableChanged(bool)
$beginGroup
$signal=|metaDataChanged()
$signal=|metaDataChanged(QString,QVariant)
$endGroup
$signal=|metaDataWritableChanged(bool)
$signal=|mutedChanged(bool)
$signal=|stateChanged(QMediaRecorder::State)
$signal=|statusChanged(QMediaRecorder::Status)
$signal=|volumeChanged(qreal)
$endSignals

#pragma ENDDUMP
