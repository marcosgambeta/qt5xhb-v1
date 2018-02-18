%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QHorizontalPercentBarSeries INHERIT QAbstractBarSeries

   METHOD new
   METHOD delete

   METHOD type

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,7,0

using namespace QtCharts;

$prototype=explicit QHorizontalPercentBarSeries(QObject *parent = Q_NULLPTR)
$constructor=5,7,0|new|QObject *=Q_NULLPTR

$prototype=~QHorizontalPercentBarSeries()
$deleteMethod=5,7,0

$prototype=QAbstractSeries::SeriesType type() const
$method=5,7,0|QAbstractSeries::SeriesType|type|

#pragma ENDDUMP
