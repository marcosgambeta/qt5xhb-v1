%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QBarLegendMarker INHERIT QLegendMarker

   METHOD new
   METHOD delete

   METHOD type
   METHOD series
   METHOD barset

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QBarLegendMarker(QAbstractBarSeries *series, QBarSet *barset, QLegend *legend, QObject *parent = Q_NULLPTR)
$constructor=|new|QAbstractBarSeries *,QBarSet *,QLegend *,QObject *=Q_NULLPTR

$prototype=QBarLegendMarker(QBarLegendMarkerPrivate &d, QObject *parent = Q_NULLPTR) (protected)

$prototype=virtual ~QBarLegendMarker()
$deleteMethod

$prototype=virtual LegendMarkerType type()
$virtualMethod=|QLegendMarker::LegendMarkerType|type|

$prototype=virtual QAbstractBarSeries* series()
$virtualMethod=|QAbstractBarSeries *|series|

$prototype=QBarSet* barset()
$method=|QBarSet *|barset|

#pragma ENDDUMP
