%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QAreaLegendMarker INHERIT QLegendMarker

   METHOD new
   METHOD delete

   METHOD type
   METHOD series

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

using namespace QtCharts;

$prototype=explicit QAreaLegendMarker(QAreaSeries *series, QLegend *legend, QObject *parent = Q_NULLPTR)
$constructor=|new|QAreaSeries *,QLegend *,QObject *=Q_NULLPTR

$prototype=QAreaLegendMarker(QAreaLegendMarkerPrivate &d, QObject *parent = Q_NULLPTR) (protected)

$prototype=virtual ~QAreaLegendMarker()
$deleteMethod

$prototype=virtual LegendMarkerType type()
$virtualMethod=|QLegendMarker::LegendMarkerType|type|

$prototype=virtual QAreaSeries* series()
$virtualMethod=|QAreaSeries *|series|

#pragma ENDDUMP
