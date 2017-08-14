$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMEDIATIMERANGE
REQUEST QMEDIACONTENT
REQUEST QIODEVICE
#endif

CLASS QMediaPlayerControl INHERIT QMediaControl

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD availablePlaybackRanges
   METHOD bufferStatus
   METHOD duration
   METHOD isAudioAvailable
   METHOD isMuted
   METHOD isSeekable
   METHOD isVideoAvailable
   METHOD media
   METHOD mediaStatus
   METHOD mediaStream
   METHOD pause
   METHOD play
   METHOD playbackRate
   METHOD position
   METHOD setMedia
   METHOD setMuted
   METHOD setPlaybackRate
   METHOD setPosition
   METHOD setVolume
   METHOD state
   METHOD stop
   METHOD volume

   METHOD onAudioAvailableChanged
   METHOD onAvailablePlaybackRangesChanged
   METHOD onBufferStatusChanged
   METHOD onDurationChanged
   METHOD onError
   METHOD onMediaChanged
   METHOD onMediaStatusChanged
   METHOD onMutedChanged
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

$deleteMethod

/*
virtual QMediaTimeRange availablePlaybackRanges() const = 0
*/
$method=|QMediaTimeRange|availablePlaybackRanges|

/*
virtual int bufferStatus() const = 0
*/
$method=|int|bufferStatus|

/*
virtual qint64 duration() const = 0
*/
$method=|qint64|duration|

/*
virtual bool isAudioAvailable() const = 0
*/
$method=|bool|isAudioAvailable|

/*
virtual bool isMuted() const = 0
*/
$method=|bool|isMuted|

/*
virtual bool isSeekable() const = 0
*/
$method=|bool|isSeekable|

/*
virtual bool isVideoAvailable() const = 0
*/
$method=|bool|isVideoAvailable|

/*
virtual QMediaContent media() const = 0
*/
$method=|QMediaContent|media|

/*
virtual QMediaPlayer::MediaStatus mediaStatus() const = 0
*/
$method=|QMediaPlayer::MediaStatus|mediaStatus|

/*
virtual const QIODevice * mediaStream() const = 0
*/
$method=|const QIODevice *|mediaStream|

/*
virtual void pause() = 0
*/
$method=|void|pause|

/*
virtual void play() = 0
*/
$method=|void|play|

/*
virtual qreal playbackRate() const = 0
*/
$method=|qreal|playbackRate|

/*
virtual qint64 position() const = 0
*/
$method=|qint64|position|

/*
virtual void setMedia(const QMediaContent & media, QIODevice * stream) = 0
*/
$method=|void|setMedia|const QMediaContent &,QIODevice *

/*
virtual void setMuted(bool mute) = 0
*/
$method=|void|setMuted|bool

/*
virtual void setPlaybackRate(qreal rate) = 0
*/
$method=|void|setPlaybackRate|qreal

/*
virtual void setPosition(qint64 position) = 0
*/
$method=|void|setPosition|qint64

/*
virtual void setVolume(int volume) = 0
*/
$method=|void|setVolume|int

/*
virtual QMediaPlayer::State state() const = 0
*/
$method=|QMediaPlayer::State|state|

/*
virtual void stop() = 0
*/
$method=|void|stop|

/*
virtual int volume() const = 0
*/
$method=|int|volume|

#pragma ENDDUMP
