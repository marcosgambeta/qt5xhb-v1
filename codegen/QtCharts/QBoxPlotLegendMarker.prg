%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QBoxPlotLegendMarker INHERIT QLegendMarker

   METHOD new
   METHOD delete

   METHOD series
   METHOD type

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

prototype=explicit QBoxPlotLegendMarker(QBoxPlotSeries *series, QLegend *legend, QObject *parent = Q_NULLPTR)
$constructor=|new|QBoxPlotSeries *,QLegend *,QObject *=Q_NULLPTR

prototype=QBoxPlotLegendMarker(QBoxPlotLegendMarkerPrivate &d, QObject *parent = Q_NULLPTR) (protected)

prototype=virtual ~QBoxPlotLegendMarker()
$deleteMethod

prototype=virtual LegendMarkerType type()
$method=|QLegendMarker::LegendMarkerType|type|

prototype=virtual QBoxPlotSeries* series()
$method=|QBoxPlotSeries *|series|

#pragma ENDDUMP
