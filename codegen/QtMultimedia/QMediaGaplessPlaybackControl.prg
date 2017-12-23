$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMEDIACONTENT
#endif

CLASS QMediaGaplessPlaybackControl INHERIT QMediaControl

   METHOD delete
   METHOD crossfadeTime
   METHOD isCrossfadeSupported
   METHOD nextMedia
   METHOD setCrossfadeTime
   METHOD setNextMedia

   METHOD onAdvancedToNextMedia
   METHOD onCrossfadeTimeChanged
   METHOD onNextMediaChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual qreal crossfadeTime() const = 0
$virtualMethod=|qreal|crossfadeTime|

$prototype=virtual bool isCrossfadeSupported() const = 0
$virtualMethod=|bool|isCrossfadeSupported|

$prototype=virtual QMediaContent nextMedia() const = 0
$virtualMethod=|QMediaContent|nextMedia|

$prototype=virtual void setCrossfadeTime(qreal crossfadeTime) = 0
$virtualMethod=|void|setCrossfadeTime|qreal

$prototype=virtual void setNextMedia(const QMediaContent & media) = 0
$virtualMethod=|void|setNextMedia|const QMediaContent &

#pragma ENDDUMP
