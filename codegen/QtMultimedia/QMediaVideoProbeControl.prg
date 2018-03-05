%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QMediaVideoProbeControl INHERIT QMediaControl

%%   METHOD new
   METHOD delete

   METHOD onFlush
   METHOD onVideoFrameProbed

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QMediaVideoProbeControl(QObject *parent = Q_NULLPTR) (protected)

$prototype=virtual ~QMediaVideoProbeControl()
$deleteMethod

$connectSignalFunction

$signalMethod=|flush()
$signalMethod=|videoFrameProbed(QVideoFrame)

#pragma ENDDUMP
