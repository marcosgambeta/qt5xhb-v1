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

/*
QSoundEffect(QObject *parent = 0)
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
QUrl source() const
*/
$method=|QUrl|source|

/*
void setSource(const QUrl &url)
*/
$method=|void|setSource|const QUrl &

/*
int loopCount() const
*/
$method=|int|loopCount|

/*
int loopsRemaining() const
*/
$method=|int|loopsRemaining|

/*
void setLoopCount(int loopCount)
*/
$method=|void|setLoopCount|int

/*
qreal volume() const
*/
$method=|qreal|volume|

/*
void setVolume(qreal volume)
*/
$method=|void|setVolume|qreal

/*
bool isMuted() const
*/
$method=|bool|isMuted|

/*
void setMuted(bool muted)
*/
$method=|void|setMuted|bool

/*
bool isLoaded() const
*/
$method=|bool|isLoaded|

/*
bool isPlaying() const
*/
$method=|bool|isPlaying|

/*
Status status() const
*/
$method=|QSoundEffect::Status|status|

/*
QString category() const
*/
$method=|QString|category|

/*
void setCategory(const QString &category)
*/
$method=|void|setCategory|const QString &

/*
void play()
*/
$method=|void|play|

/*
void stop()
*/
$method=|void|stop|

/*
static QStringList supportedMimeTypes()
*/
$staticMethod=|QStringList|supportedMimeTypes|

#pragma ENDDUMP
