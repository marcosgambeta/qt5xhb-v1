%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$beginClass

%%   METHOD new
   METHOD delete

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=virtual ~QAnimationCallback()
$deleteMethod

$prototype=virtual void valueChanged(const QVariant &value) = 0

$extraMethods

#pragma ENDDUMP
