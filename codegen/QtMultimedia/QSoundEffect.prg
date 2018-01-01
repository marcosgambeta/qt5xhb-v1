%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
#endif

CLASS QSoundEffect INHERIT QObject

   METHOD new
   METHOD delete
   METHOD source
   METHOD setSource
   METHOD loopCount
   METHOD loopsRemaining
   METHOD setLoopCount
   METHOD volume
   METHOD setVolume
   METHOD isMuted
   METHOD setMuted
   METHOD isLoaded
   METHOD isPlaying
   METHOD status
   METHOD category
   METHOD setCategory
   METHOD play
   METHOD stop
   METHOD supportedMimeTypes

   METHOD onSourceChanged
   METHOD onLoopCountChanged
   METHOD onLoopsRemainingChanged
   METHOD onVolumeChanged
   METHOD onMutedChanged
   METHOD onLoadedChanged
   METHOD onPlayingChanged
   METHOD onStatusChanged
   METHOD onCategoryChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSoundEffect(QObject *parent = 0)
$constructor=|new|QObject *=0

$deleteMethod

$prototype=QUrl source() const
$method=|QUrl|source|

$prototype=void setSource(const QUrl &url)
$method=|void|setSource|const QUrl &

$prototype=int loopCount() const
$method=|int|loopCount|

$prototype=int loopsRemaining() const
$method=|int|loopsRemaining|

$prototype=void setLoopCount(int loopCount)
$method=|void|setLoopCount|int

$prototype=qreal volume() const
$method=|qreal|volume|

$prototype=void setVolume(qreal volume)
$method=|void|setVolume|qreal

$prototype=bool isMuted() const
$method=|bool|isMuted|

$prototype=void setMuted(bool muted)
$method=|void|setMuted|bool

$prototype=bool isLoaded() const
$method=|bool|isLoaded|

$prototype=bool isPlaying() const
$method=|bool|isPlaying|

$prototype=Status status() const
$method=|QSoundEffect::Status|status|

$prototype=QString category() const
$method=|QString|category|

$prototype=void setCategory(const QString &category)
$method=|void|setCategory|const QString &

$prototype=void play()
$method=|void|play|

$prototype=void stop()
$method=|void|stop|

$prototype=static QStringList supportedMimeTypes()
$staticMethod=|QStringList|supportedMimeTypes|

#pragma ENDDUMP
