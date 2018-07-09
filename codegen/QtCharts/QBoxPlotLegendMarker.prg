%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QLegendMarker

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,7,0

using namespace QtCharts;

$prototype=explicit QBoxPlotLegendMarker(QBoxPlotSeries *series, QLegend *legend, QObject *parent = Q_NULLPTR)
$constructor=5,7,0|new|QBoxPlotSeries *,QLegend *,QObject *=Q_NULLPTR

$prototype=QBoxPlotLegendMarker(QBoxPlotLegendMarkerPrivate &d, QObject *parent = Q_NULLPTR) (protected)

$prototype=virtual ~QBoxPlotLegendMarker()
$deleteMethod=5,7,0

$prototype=virtual LegendMarkerType type()
$method=5,7,0|QLegendMarker::LegendMarkerType|type|

$prototype=virtual QBoxPlotSeries* series()
$method=5,7,0|QBoxPlotSeries *|series|

#pragma ENDDUMP
