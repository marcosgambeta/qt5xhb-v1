%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QStyleHints INHERIT QObject

   METHOD mouseDoubleClickInterval
   METHOD startDragDistance
   METHOD startDragTime
   METHOD startDragVelocity
   METHOD keyboardInputInterval
   METHOD keyboardAutoRepeatRate
   METHOD cursorFlashTime
   METHOD showIsFullScreen
   METHOD passwordMaskDelay
   METHOD fontSmoothingGamma
   METHOD useRtlExtensions

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=int mouseDoubleClickInterval() const
$method=|int|mouseDoubleClickInterval|

$prototype=int startDragDistance() const
$method=|int|startDragDistance|

$prototype=int startDragTime() const
$method=|int|startDragTime|

$prototype=int startDragVelocity() const
$method=|int|startDragVelocity|

$prototype=int keyboardInputInterval() const
$method=|int|keyboardInputInterval|

$prototype=int keyboardAutoRepeatRate() const
$method=|int|keyboardAutoRepeatRate|

$prototype=int cursorFlashTime() const
$method=|int|cursorFlashTime|

$prototype=bool showIsFullScreen() const
$method=|bool|showIsFullScreen|

$prototype=int passwordMaskDelay() const
$method=|int|passwordMaskDelay|

$prototype=qreal fontSmoothingGamma() const
$method=|qreal|fontSmoothingGamma|

$prototype=bool useRtlExtensions() const
$method=|bool|useRtlExtensions|

#pragma ENDDUMP
