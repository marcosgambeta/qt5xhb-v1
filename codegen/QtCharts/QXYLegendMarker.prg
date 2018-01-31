%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QXYLegendMarker INHERIT QLegendMarker

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

$prototype=explicit QXYLegendMarker(QXYSeries *series, QLegend *legend, QObject *parent = Q_NULLPTR)
$constructor=|new|QXYSeries *,QLegend *,QObject *=Q_NULLPTR

$prototype=QXYLegendMarker(QXYLegendMarkerPrivate &d, QObject *parent = Q_NULLPTR) (protected)

$prototype=virtual ~QXYLegendMarker()
$deleteMethod

$prototype=virtual LegendMarkerType type()
$virtualMethod=|QLegendMarker::LegendMarkerType|type|

$prototype=virtual QXYSeries* series()
$virtualMethod=|QXYSeries *|series|

#pragma ENDDUMP
