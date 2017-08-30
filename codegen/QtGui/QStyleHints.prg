$header

#include "hbclass.ch"

CLASS QStyleHints INHERIT QObject

   DATA self_destruction INIT .F.

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

/*
int mouseDoubleClickInterval() const
*/
$method=|int|mouseDoubleClickInterval|

/*
int startDragDistance() const
*/
$method=|int|startDragDistance|

/*
int startDragTime() const
*/
$method=|int|startDragTime|

/*
int startDragVelocity() const
*/
$method=|int|startDragVelocity|

/*
int keyboardInputInterval() const
*/
$method=|int|keyboardInputInterval|

/*
int keyboardAutoRepeatRate() const
*/
$method=|int|keyboardAutoRepeatRate|

/*
int cursorFlashTime() const
*/
$method=|int|cursorFlashTime|

/*
bool showIsFullScreen() const
*/
$method=|bool|showIsFullScreen|

/*
int passwordMaskDelay() const
*/
$method=|int|passwordMaskDelay|

/*
qreal fontSmoothingGamma() const
*/
$method=|qreal|fontSmoothingGamma|

/*
bool useRtlExtensions() const
*/
$method=|bool|useRtlExtensions|

#pragma ENDDUMP
