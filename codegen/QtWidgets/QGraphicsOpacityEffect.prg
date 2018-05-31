%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QGraphicsEffect

   METHOD new
   METHOD delete
   METHOD opacity
   METHOD opacityMask
   METHOD setOpacity
   METHOD setOpacityMask

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGraphicsOpacityEffect ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototype=qreal opacity () const
$method=|qreal|opacity|

$prototype=QBrush opacityMask () const
$method=|QBrush|opacityMask|

$prototype=void setOpacity ( qreal opacity )
$method=|void|setOpacity|qreal

$prototype=void setOpacityMask ( const QBrush & mask )
$method=|void|setOpacityMask|const QBrush &

$beginSignals
$signal=|opacityChanged(qreal)
$signal=|opacityMaskChanged(QBrush)
$endSignals

#pragma ENDDUMP
