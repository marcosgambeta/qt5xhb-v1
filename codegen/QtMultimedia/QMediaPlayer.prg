$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMEDIACONTENT
REQUEST QNETWORKCONFIGURATION
REQUEST QIODEVICE
REQUEST QMEDIAPLAYLIST
#endif

CLASS QMediaPlayer INHERIT QMediaObject

   DATA self_destruction INIT .F.

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
   METHOD setVideoOutput1
   METHOD setVideoOutput2
   METHOD setVideoOutput3
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

   METHOD onAudioAvailableChanged
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

/*
QMediaPlayer(QObject * parent = 0, Flags flags = 0)
*/
$constructor=|new|QObject *=0,QMediaPlayer::Flags=0

$deleteMethod

/*
int bufferStatus() const
*/
$method=|int|bufferStatus|

/*
QMediaContent currentMedia() const
*/
$method=|QMediaContent|currentMedia|

/*
QNetworkConfiguration currentNetworkConfiguration() const
*/
$method=|QNetworkConfiguration|currentNetworkConfiguration|

/*
qint64 duration() const
*/
$method=|qint64|duration|

/*
Error error() const
*/
$method=|QMediaPlayer::Error|error|

/*
QString errorString() const
*/
$method=|QString|errorString|

/*
bool isAudioAvailable() const
*/
$method=|bool|isAudioAvailable|

/*
bool isMuted() const
*/
$method=|bool|isMuted|

/*
bool isSeekable() const
*/
$method=|bool|isSeekable|

/*
bool isVideoAvailable() const
*/
$method=|bool|isVideoAvailable|

/*
QMediaContent media() const
*/
$method=|QMediaContent|media|

/*
MediaStatus mediaStatus() const
*/
$method=|QMediaPlayer::MediaStatus|mediaStatus|

/*
const QIODevice * mediaStream() const
*/
$method=|const QIODevice *|mediaStream|

/*
qreal playbackRate() const
*/
$method=|qreal|playbackRate|

/*
QMediaPlaylist * playlist() const
*/
$method=|QMediaPlaylist *|playlist|

/*
qint64 position() const
*/
$method=|qint64|position|

/*
void setVideoOutput(QVideoWidget * output)
*/
$method=|void|setVideoOutput,setVideoOutput1|QVideoWidget *

/*
void setVideoOutput(QGraphicsVideoItem * output)
*/
$method=|void|setVideoOutput,setVideoOutput2|QGraphicsVideoItem *

/*
void setVideoOutput(QAbstractVideoSurface * surface)
*/
$method=|void|setVideoOutput,setVideoOutput3|QAbstractVideoSurface *

//[1]void setVideoOutput(QVideoWidget * output)
//[2]void setVideoOutput(QGraphicsVideoItem * output)
//[3]void setVideoOutput(QAbstractVideoSurface * surface)

HB_FUNC_STATIC( QMEDIAPLAYER_SETVIDEOOUTPUT )
{
  if( ISNUMPAR(1) && ISQVIDEOWIDGET(1) )
  {
    HB_FUNC_EXEC( QMEDIAPLAYER_SETVIDEOOUTPUT1 );
  }
  else if( ISNUMPAR(1) && ISQGRAPHICSVIDEOITEM(1) )
  {
    HB_FUNC_EXEC( QMEDIAPLAYER_SETVIDEOOUTPUT2 );
  }
  else if( ISNUMPAR(1) && ISQABSTRACTVIDEOSURFACE(1) )
  {
    HB_FUNC_EXEC( QMEDIAPLAYER_SETVIDEOOUTPUT3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
State state() const
*/
$method=|QMediaPlayer::State|state|

/*
int volume() const
*/
$method=|int|volume|

/*
virtual QMultimedia::AvailabilityStatus availability() const
*/
$method=|QMultimedia::AvailabilityStatus|availability|

/*
void pause()
*/
$method=|void|pause|

/*
void play()
*/
$method=|void|play|

/*
void setMedia(const QMediaContent & media, QIODevice * stream = 0)
*/
$method=|void|setMedia|const QMediaContent &,QIODevice *=0

/*
void setMuted(bool muted)
*/
$method=|void|setMuted|bool

/*
void setNetworkConfigurations(const QList<QNetworkConfiguration> & configurations)
*/
$method=|void|setNetworkConfigurations|const QList<QNetworkConfiguration> &

/*
void setPlaybackRate(qreal rate)
*/
$method=|void|setPlaybackRate|qreal

/*
void setPlaylist(QMediaPlaylist * playlist)
*/
$method=|void|setPlaylist|QMediaPlaylist *

/*
void setPosition(qint64 position)
*/
$method=|void|setPosition|qint64

/*
void setVolume(int volume)
*/
$method=|void|setVolume|int

/*
void stop()
*/
$method=|void|stop|

/*
static QMultimedia::SupportEstimate hasSupport(const QString & mimeType, const QStringList & codecs = QStringList(), Flags flags = 0)
*/
$staticMethod=|QMultimedia::SupportEstimate|hasSupport|const QString &,const QStringList &=QStringList(),QMediaPlayer::Flags=0

/*
static QStringList supportedMimeTypes(Flags flags = 0) (deprecated)
*/
$staticMethod=|QStringList|supportedMimeTypes|QMediaPlayer::Flags=0

#pragma ENDDUMP
