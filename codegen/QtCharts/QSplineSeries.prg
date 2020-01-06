%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCharts

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QLineSeries

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,7,0

using namespace QtCharts;

$prototype=explicit QSplineSeries(QObject *parent = Q_NULLPTR)
$constructor=5,7,0|new|QObject *=Q_NULLPTR

$prototype=~QSplineSeries()
$deleteMethod=5,7,0

$prototype=QAbstractSeries::SeriesType type() const
$method=5,7,0|QAbstractSeries::SeriesType|type|

#pragma ENDDUMP
