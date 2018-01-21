%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QMediaAudioProbeControl INHERIT QMediaControl

%%   METHOD new
   METHOD delete

   METHOD onAudioBufferProbed
   METHOD onFlush

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QMediaAudioProbeControl(QObject *parent = Q_NULLPTR) (protected)

$prototype=virtual ~QMediaAudioProbeControl()
$deleteMethod

#pragma ENDDUMP

%% Q_SIGNALS:
%% void audioBufferProbed(const QAudioBuffer &buffer);
%% void flush();
