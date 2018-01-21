%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMEDIACONTENT
REQUEST QNETWORKCONFIGURATION
REQUEST QIODEVICE
REQUEST QMEDIAPLAYLIST
#endif

CLASS QMediaPlayer INHERIT QMediaObject

   METHOD new
   METHOD delete
   METHOD bufferStatus
   METHOD currentMedia
   METHOD currentNetworkConfiguration
   METHOD duration
   METHOD error
   METHOD errorString
   METHOD isAudioAvailable
   METHOD isMuted
   METHOD isSeekable
   METHOD isVideoAvailable
   METHOD media
   METHOD mediaStatus
   METHOD mediaStream
   METHOD playbackRate
   METHOD playlist
   METHOD position
   METHOD setVideoOutput
   METHOD state
   METHOD volume
   METHOD availability
   METHOD pause
   METHOD play
   METHOD setMedia
   METHOD setMuted
   METHOD setNetworkConfigurations
   METHOD setPlaybackRate
   METHOD setPlaylist
   METHOD setPosition
   METHOD setVolume
   METHOD stop
   METHOD hasSupport
   METHOD supportedMimeTypes
   METHOD audioRole
   METHOD setAudioRole

   METHOD onAudioAvailableChanged
   METHOD onAudioRoleChanged
   METHOD onBufferStatusChanged
   METHOD onCurrentMediaChanged
   METHOD onDurationChanged
   METHOD onError
   METHOD onMediaChanged
   METHOD onMediaStatusChanged
   METHOD onMutedChanged
   METHOD onNetworkConfigurationChanged
   METHOD onPlaybackRateChanged
   METHOD onPositionChanged
   METHOD onSeekableChanged
   METHOD onStateChanged
   METHOD onVideoAvailableChanged
   METHOD onVolumeChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QMediaPlaylist>

$prototype=explicit QMediaPlayer(QObject *parent = Q_NULLPTR, Flags flags = Flags())
%% TODO: 'Q_NULLPTR' and 'Flags flags = Flags()'
$constructor=|new|QObject *=0,QMediaPlayer::Flags=0

$prototype=~QMediaPlayer()
$deleteMethod

%%
%% Q_PROPERTY(QMediaContent media READ media WRITE setMedia NOTIFY mediaChanged)
%%

$prototype=QMediaContent media() const
$method=|QMediaContent|media|

$prototype=void setMedia(const QMediaContent &media, QIODevice *stream = Q_NULLPTR)
$slotMethod=|void|setMedia|const QMediaContent &,QIODevice *=0

%%
%% Q_PROPERTY(QMediaContent currentMedia READ currentMedia NOTIFY currentMediaChanged)
%%

$prototype=QMediaContent currentMedia() const
$method=|QMediaContent|currentMedia|

%%
%% Q_PROPERTY(QMediaPlaylist * playlist READ playlist WRITE setPlaylist)
%%

$prototype=QMediaPlaylist * playlist() const
$method=|QMediaPlaylist *|playlist|

$prototype=void setPlaylist(QMediaPlaylist * playlist)
$slotMethod=|void|setPlaylist|QMediaPlaylist *

%%
%% Q_PROPERTY(qint64 duration READ duration NOTIFY durationChanged)
%%

$prototype=qint64 duration() const
$method=|qint64|duration|

%%
%% Q_PROPERTY(qint64 position READ position WRITE setPosition NOTIFY positionChanged)
%%

$prototype=qint64 position() const
$method=|qint64|position|

$prototype=void setPosition(qint64 position)
$slotMethod=|void|setPosition|qint64

%%
%% Q_PROPERTY(int volume READ volume WRITE setVolume NOTIFY volumeChanged)
%%

$prototype=int volume() const
$method=|int|volume|

$prototype=void setVolume(int volume)
$slotMethod=|void|setVolume|int

%%
%% Q_PROPERTY(bool muted READ isMuted WRITE setMuted NOTIFY mutedChanged)
%%

$prototype=bool isMuted() const
$method=|bool|isMuted|

$prototype=void setMuted(bool muted)
$slotMethod=|void|setMuted|bool

%%
%% Q_PROPERTY(int bufferStatus READ bufferStatus NOTIFY bufferStatusChanged)
%%

$prototype=int bufferStatus() const
$method=|int|bufferStatus|

%%
%% Q_PROPERTY(bool audioAvailable READ isAudioAvailable NOTIFY audioAvailableChanged)
%%

$prototype=bool isAudioAvailable() const
$method=|bool|isAudioAvailable|

%%
%% Q_PROPERTY(bool videoAvailable READ isVideoAvailable NOTIFY videoAvailableChanged)
%%

$prototype=bool isVideoAvailable() const
$method=|bool|isVideoAvailable|

%%
%% Q_PROPERTY(bool seekable READ isSeekable NOTIFY seekableChanged)
%%

$prototype=bool isSeekable() const
$method=|bool|isSeekable|

%%
%% Q_PROPERTY(qreal playbackRate READ playbackRate WRITE setPlaybackRate NOTIFY playbackRateChanged)
%%

$prototype=qreal playbackRate() const
$method=|qreal|playbackRate|

%%
%% Q_PROPERTY(State state READ state NOTIFY stateChanged)
%%

$prototype=State state() const
$method=|QMediaPlayer::State|state|

%%
%% Q_PROPERTY(MediaStatus mediaStatus READ mediaStatus NOTIFY mediaStatusChanged)
%%

$prototype=MediaStatus mediaStatus() const
$method=|QMediaPlayer::MediaStatus|mediaStatus|

%%
%% Q_PROPERTY(QAudio::Role audioRole READ audioRole WRITE setAudioRole)
%%

$prototype=QAudio::Role audioRole() const
$method=5,6,0|QAudio::Role|audioRole|

$prototype=void setAudioRole(QAudio::Role audioRole)
$method=5,6,0|void|setAudioRole|QAudio::Role

%%
%% Q_PROPERTY(QString error READ errorString)
%%

$prototype=QString errorString() const
$method=|QString|errorString|

%%
%%
%%

$prototype=QNetworkConfiguration currentNetworkConfiguration() const
$method=|QNetworkConfiguration|currentNetworkConfiguration|

$prototype=Error error() const
$method=|QMediaPlayer::Error|error|

$prototype=const QIODevice * mediaStream() const
$method=|const QIODevice *|mediaStream|

$prototype=void setVideoOutput(QVideoWidget * output)
$internalMethod=|void|setVideoOutput,setVideoOutput1|QVideoWidget *

$prototype=void setVideoOutput(QGraphicsVideoItem * output)
$internalMethod=|void|setVideoOutput,setVideoOutput2|QGraphicsVideoItem *

$prototype=void setVideoOutput(QAbstractVideoSurface * surface)
$internalMethod=|void|setVideoOutput,setVideoOutput3|QAbstractVideoSurface *

//[1]void setVideoOutput(QVideoWidget * output)
//[2]void setVideoOutput(QGraphicsVideoItem * output)
//[3]void setVideoOutput(QAbstractVideoSurface * surface)

HB_FUNC_STATIC( QMEDIAPLAYER_SETVIDEOOUTPUT )
{
  if( ISNUMPAR(1) && ISQVIDEOWIDGET(1) )
  {
    QMediaPlayer_setVideoOutput1();
  }
  else if( ISNUMPAR(1) && ISQGRAPHICSVIDEOITEM(1) )
  {
    QMediaPlayer_setVideoOutput2();
  }
  else if( ISNUMPAR(1) && ISQABSTRACTVIDEOSURFACE(1) )
  {
    QMediaPlayer_setVideoOutput3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=virtual QMultimedia::AvailabilityStatus availability() const override
$virtualMethod=|QMultimedia::AvailabilityStatus|availability|

$prototype=void pause()
$slotMethod=|void|pause|

$prototype=void play()
$slotMethod=|void|play|

$prototype=void setNetworkConfigurations(const QList<QNetworkConfiguration> & configurations)
$slotMethod=|void|setNetworkConfigurations|const QList<QNetworkConfiguration> &

$prototype=void setPlaybackRate(qreal rate)
$slotMethod=|void|setPlaybackRate|qreal

$prototype=void stop()
$slotMethod=|void|stop|

$prototype=static QMultimedia::SupportEstimate hasSupport(const QString &mimeType, const QStringList& codecs = QStringList(), Flags flags = Flags())
$staticMethod=|QMultimedia::SupportEstimate|hasSupport|const QString &,const QStringList &=QStringList(),QMediaPlayer::Flags=0

$prototype=static QStringList supportedMimeTypes(Flags flags = Flags())
$staticMethod=|QStringList|supportedMimeTypes|QMediaPlayer::Flags=0

$prototype=QList<QAudio::Role> supportedAudioRoles() const
$method=5,6,0|QList<QAudio::Role>|supportedAudioRoles|

$prototype=bool bind(QObject *) override
%% TODO: not present in the documentation

$prototype=void unbind(QObject *) override
%% TODO: not present in the documentation

#pragma ENDDUMP

%% Q_SIGNALS:
%% void mediaChanged(const QMediaContent &media)
%% void currentMediaChanged(const QMediaContent &media)
%% void stateChanged(QMediaPlayer::State newState)
%% void mediaStatusChanged(QMediaPlayer::MediaStatus status)
%% void durationChanged(qint64 duration)
%% void positionChanged(qint64 position)
%% void volumeChanged(int volume)
%% void mutedChanged(bool muted)
%% void audioAvailableChanged(bool available)
%% void videoAvailableChanged(bool videoAvailable)
%% void bufferStatusChanged(int percentFilled)
%% void seekableChanged(bool seekable)
%% void playbackRateChanged(qreal rate)
%% void audioRoleChanged(QAudio::Role role)
%% void error(QMediaPlayer::Error error)
%% void networkConfigurationChanged(const QNetworkConfiguration &configuration)
