%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QWinColorizationChangeEvent INHERIT QWinEvent

   METHOD new
   METHOD delete
   METHOD color
   METHOD opaqueBlend

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,2,0

$prototype=QWinColorizationChangeEvent(QRgb color, bool opaque)
$constructor=5,2,0|new|QRgb,bool

$deleteMethod=5,2,0

$prototype=QRgb color() const
$method=5,2,0|QRgb|color|

$prototype=bool opaqueBlend() const
$method=5,2,0|bool|opaqueBlend|

#pragma ENDDUMP
