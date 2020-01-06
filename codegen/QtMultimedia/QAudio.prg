%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=qreal convertVolume(qreal volume, VolumeScale from, VolumeScale to)
$staticMethod=5,8,0|qreal|convertVolume|qreal,QAudio::VolumeScale,QAudio::VolumeScale

$extraMethods

#pragma ENDDUMP
