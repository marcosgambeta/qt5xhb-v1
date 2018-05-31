%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QMediaControl

%%   METHOD new
   METHOD delete

   METHOD crossfadeTime
   METHOD isCrossfadeSupported
   METHOD nextMedia
   METHOD setCrossfadeTime
   METHOD setNextMedia

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QMediaGaplessPlaybackControl(QObject *parent = Q_NULLPTR) (protected)

$prototype=virtual ~QMediaGaplessPlaybackControl()
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

$beginSignals
$signal=|advancedToNextMedia()
$signal=|crossfadeTimeChanged(qreal)
$signal=|nextMediaChanged(QMediaContent)
$endSignals

#pragma ENDDUMP
