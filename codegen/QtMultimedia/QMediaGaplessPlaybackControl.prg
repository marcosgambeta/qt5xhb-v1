$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMEDIACONTENT
#endif

CLASS QMediaGaplessPlaybackControl INHERIT QMediaControl

   DATA self_destruction INIT .F.

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

/*
virtual qreal crossfadeTime() const = 0
*/
$method=|qreal|crossfadeTime|

/*
virtual bool isCrossfadeSupported() const = 0
*/
$method=|bool|isCrossfadeSupported|

/*
virtual QMediaContent nextMedia() const = 0
*/
$method=|QMediaContent|nextMedia|

/*
virtual void setCrossfadeTime(qreal crossfadeTime) = 0
*/
$method=|void|setCrossfadeTime|qreal

/*
virtual void setNextMedia(const QMediaContent & media) = 0
*/
$method=|void|setNextMedia|const QMediaContent &

#pragma ENDDUMP
