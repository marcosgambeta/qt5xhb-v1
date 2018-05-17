%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$beginClassFrom=QSGNode

   METHOD new
   METHOD delete
   METHOD opacity
   METHOD setOpacity

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSGOpacityNode()
$constructor=|new|

$deleteMethod

$prototype=qreal opacity() const
$method=|qreal|opacity|

$prototype=void setOpacity(qreal opacity)
$method=|void|setOpacity|qreal

#pragma ENDDUMP
