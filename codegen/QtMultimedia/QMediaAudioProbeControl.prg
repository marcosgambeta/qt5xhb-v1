%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QMediaControl

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QMediaAudioProbeControl(QObject *parent = Q_NULLPTR) [protected]

$prototype=virtual ~QMediaAudioProbeControl()
$deleteMethod

$beginSignals
$signal=|audioBufferProbed(QAudioBuffer)
$signal=|flush()
$endSignals

#pragma ENDDUMP
