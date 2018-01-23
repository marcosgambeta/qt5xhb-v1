%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QAudio

   DATA pointer
   DATA self_destruction INIT .F.

%%   METHOD new
%%   METHOD delete

   METHOD convertVolume

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=qreal convertVolume(qreal volume, VolumeScale from, VolumeScale to)
$staticMethod=5,8,0|qreal|convertVolume|qreal,QAudio::VolumeScale,QAudio::VolumeScale

$extraMethods

#pragma ENDDUMP
