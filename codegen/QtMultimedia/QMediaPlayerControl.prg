$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMEDIATIMERANGE
REQUEST QMEDIACONTENT
REQUEST QIODEVICE
#endif

CLASS QMediaPlayerControl INHERIT QMediaControl

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

$prototype=virtual QMediaTimeRange availablePlaybackRanges() const = 0
$method=|QMediaTimeRange|availablePlaybackRanges|

$prototype=virtual int bufferStatus() const = 0
$method=|int|bufferStatus|

$prototype=virtual qint64 duration() const = 0
$method=|qint64|duration|

$prototype=virtual bool isAudioAvailable() const = 0
$method=|bool|isAudioAvailable|

$prototype=virtual bool isMuted() const = 0
$method=|bool|isMuted|

$prototype=virtual bool isSeekable() const = 0
$method=|bool|isSeekable|

$prototype=virtual bool isVideoAvailable() const = 0
$method=|bool|isVideoAvailable|

$prototype=virtual QMediaContent media() const = 0
$method=|QMediaContent|media|

$prototype=virtual QMediaPlayer::MediaStatus mediaStatus() const = 0
$method=|QMediaPlayer::MediaStatus|mediaStatus|

$prototype=virtual const QIODevice * mediaStream() const = 0
$method=|const QIODevice *|mediaStream|

$prototype=virtual void pause() = 0
$method=|void|pause|

$prototype=virtual void play() = 0
$method=|void|play|

$prototype=virtual qreal playbackRate() const = 0
$method=|qreal|playbackRate|

$prototype=virtual qint64 position() const = 0
$method=|qint64|position|

$prototype=virtual void setMedia(const QMediaContent & media, QIODevice * stream) = 0
$method=|void|setMedia|const QMediaContent &,QIODevice *

$prototype=virtual void setMuted(bool mute) = 0
$method=|void|setMuted|bool

$prototype=virtual void setPlaybackRate(qreal rate) = 0
$method=|void|setPlaybackRate|qreal

$prototype=virtual void setPosition(qint64 position) = 0
$method=|void|setPosition|qint64

$prototype=virtual void setVolume(int volume) = 0
$method=|void|setVolume|int

$prototype=virtual QMediaPlayer::State state() const = 0
$method=|QMediaPlayer::State|state|

$prototype=virtual void stop() = 0
$method=|void|stop|

$prototype=virtual int volume() const = 0
$method=|int|volume|

#pragma ENDDUMP
