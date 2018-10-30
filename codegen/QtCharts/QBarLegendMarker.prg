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

$prototype=explicit QBarLegendMarker(QAbstractBarSeries *series, QBarSet *barset, QLegend *legend, QObject *parent = Q_NULLPTR)
$constructor=5,7,0|new|QAbstractBarSeries *,QBarSet *,QLegend *,QObject *=Q_NULLPTR

$prototype=QBarLegendMarker(QBarLegendMarkerPrivate &d, QObject *parent = Q_NULLPTR) [protected]

$prototype=virtual ~QBarLegendMarker()
$deleteMethod=5,7,0

$prototype=virtual LegendMarkerType type()
$virtualMethod=5,7,0|QLegendMarker::LegendMarkerType|type|

$prototype=virtual QAbstractBarSeries* series()
$virtualMethod=5,7,0|QAbstractBarSeries *|series|

$prototype=QBarSet* barset()
$method=5,7,0|QBarSet *|barset|

#pragma ENDDUMP
