%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QGraphicsTransform INHERIT QObject

   METHOD delete
   METHOD applyTo

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual void applyTo ( QMatrix4x4 * matrix ) const = 0
$virtualMethod=|void|applyTo|QMatrix4x4 *

#pragma ENDDUMP
