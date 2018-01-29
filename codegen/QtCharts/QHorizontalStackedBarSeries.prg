%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QHorizontalStackedBarSeries INHERIT QAbstractBarSeries

   METHOD new
   METHOD delete

   METHOD type

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QHorizontalStackedBarSeries(QObject *parent = Q_NULLPTR)
$constructor=|new|QObject *=Q_NULLPTR

$prototype=~QHorizontalStackedBarSeries()
$deleteMethod

$prototype=QAbstractSeries::SeriesType type() const
$method=|QAbstractSeries::SeriesType|type|

#pragma ENDDUMP
