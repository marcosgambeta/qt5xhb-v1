%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QPieLegendMarker INHERIT QLegendMarker

   METHOD new
   METHOD delete

   METHOD series
   METHOD slice
   METHOD type

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

using namespace QtCharts;

$prototype=explicit QPieLegendMarker(QPieSeries *series, QPieSlice *slice, QLegend *legend, QObject *parent = Q_NULLPTR)
$constructor=|new|QPieSeries *,QPieSlice *,QLegend *,QObject *=Q_NULLPTR

$prototype=QPieLegendMarker(QPieLegendMarkerPrivate &d, QObject *parent = Q_NULLPTR) (protected)

$prototype=virtual ~QPieLegendMarker()
$deleteMethod

$prototype=virtual LegendMarkerType type()
$virtualMethod=|QLegendMarker::LegendMarkerType|type|

$prototype=virtual QPieSeries* series()
$virtualMethod=|QPieSeries *|series|

$prototype=QPieSlice* slice()
$method=|QPieSlice *|slice|

#pragma ENDDUMP
