%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QMaskGenerator INHERIT QObject

   METHOD delete
   METHOD seed
   METHOD nextMask

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,3,0

$deleteMethod=5,3,0

$prototype=virtual bool seed() = 0
$virtualMethod=5,3,0|bool|seed|

$prototype=virtual quint32 nextMask() = 0
$virtualMethod=5,3,0|quint32|nextMask|

#pragma ENDDUMP
