%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMEDIATIMERANGE
REQUEST QMEDIACONTENT
REQUEST QIODEVICE
#endif

$beginClassFrom=QMediaControl

%%   METHOD new
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

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QMediaPlayerControl(QObject *parent = Q_NULLPTR) (protected)

$prototype=~QMediaPlayerControl()
$deleteMethod

$prototype=virtual QMediaTimeRange availablePlaybackRanges() const = 0
$virtualMethod=|QMediaTimeRange|availablePlaybackRanges|

$prototype=virtual int bufferStatus() const = 0
$virtualMethod=|int|bufferStatus|

$prototype=virtual qint64 duration() const = 0
$virtualMethod=|qint64|duration|

$prototype=virtual bool isAudioAvailable() const = 0
$virtualMethod=|bool|isAudioAvailable|

$prototype=virtual bool isMuted() const = 0
$virtualMethod=|bool|isMuted|

$prototype=virtual bool isSeekable() const = 0
$virtualMethod=|bool|isSeekable|

$prototype=virtual bool isVideoAvailable() const = 0
$virtualMethod=|bool|isVideoAvailable|

$prototype=virtual QMediaContent media() const = 0
$virtualMethod=|QMediaContent|media|

$prototype=virtual QMediaPlayer::MediaStatus mediaStatus() const = 0
$virtualMethod=|QMediaPlayer::MediaStatus|mediaStatus|

$prototype=virtual const QIODevice * mediaStream() const = 0
$virtualMethod=|const QIODevice *|mediaStream|

$prototype=virtual void pause() = 0
$virtualMethod=|void|pause|

$prototype=virtual void play() = 0
$virtualMethod=|void|play|

$prototype=virtual qreal playbackRate() const = 0
$virtualMethod=|qreal|playbackRate|

$prototype=virtual qint64 position() const = 0
$virtualMethod=|qint64|position|

$prototype=virtual void setMedia(const QMediaContent & media, QIODevice * stream) = 0
$virtualMethod=|void|setMedia|const QMediaContent &,QIODevice *

$prototype=virtual void setMuted(bool mute) = 0
$virtualMethod=|void|setMuted|bool

$prototype=virtual void setPlaybackRate(qreal rate) = 0
$virtualMethod=|void|setPlaybackRate|qreal

$prototype=virtual void setPosition(qint64 position) = 0
$virtualMethod=|void|setPosition|qint64

$prototype=virtual void setVolume(int volume) = 0
$virtualMethod=|void|setVolume|int

$prototype=virtual QMediaPlayer::State state() const = 0
$virtualMethod=|QMediaPlayer::State|state|

$prototype=virtual void stop() = 0
$virtualMethod=|void|stop|

$prototype=virtual int volume() const = 0
$virtualMethod=|int|volume|

$beginSignals
$signal=|audioAvailableChanged(bool)
$signal=|availablePlaybackRangesChanged(QMediaTimeRange)
$signal=|bufferStatusChanged(int)
$signal=|durationChanged(qint64)
$signal=|error(int,QString)
$signal=|mediaChanged(QMediaContent)
$signal=|mediaStatusChanged(QMediaPlayer::MediaStatus)
$signal=|mutedChanged(bool)
$signal=|playbackRateChanged(qreal)
$signal=|positionChanged(qint64)
$signal=|seekableChanged(bool)
$signal=|stateChanged(QMediaPlayer::State)
$signal=|videoAvailableChanged(bool)
$signal=|volumeChanged(int)
$endSignals

#pragma ENDDUMP
