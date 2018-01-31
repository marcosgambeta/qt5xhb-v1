%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QCandlestickLegendMarker INHERIT QLegendMarker

   METHOD new
   METHOD delete

   METHOD series
   METHOD type

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

using namespace QtCharts;

$prototype=explicit QCandlestickLegendMarker(QCandlestickSeries *series, QLegend *legend, QObject *parent = nullptr)
$constructor=|new|QCandlestickSeries *,QLegend *,QObject *=nullptr

$prototype=virtual ~QCandlestickLegendMarker()
$deleteMethod

$prototype=virtual LegendMarkerType type()
$virtualMethod=|QLegendMarker::LegendMarkerType|type|

$prototype=virtual QCandlestickSeries* series()
$virtualMethod=|QCandlestickSeries *|series|

#pragma ENDDUMP
