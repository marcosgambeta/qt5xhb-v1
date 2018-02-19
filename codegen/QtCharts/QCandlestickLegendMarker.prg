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

$includes=5,8,0

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
using namespace QtCharts;
#endif

$prototype=explicit QCandlestickLegendMarker(QCandlestickSeries *series, QLegend *legend, QObject *parent = nullptr)
$constructor=5,8,0|new|QCandlestickSeries *,QLegend *,QObject *=nullptr

$prototype=virtual ~QCandlestickLegendMarker()
$deleteMethod=5,8,0

$prototype=virtual LegendMarkerType type()
$virtualMethod=5,8,0|QLegendMarker::LegendMarkerType|type|

$prototype=virtual QCandlestickSeries* series()
$virtualMethod=5,8,0|QCandlestickSeries *|series|

#pragma ENDDUMP
