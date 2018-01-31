%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QPolarChart INHERIT QChart

   METHOD new
   METHOD delete

   METHOD addAxis
%%   METHOD axes
   METHOD axisPolarOrientation

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

using namespace QtCharts;

$prototype=explicit QPolarChart(QGraphicsItem *parent = Q_NULLPTR, Qt::WindowFlags wFlags = Qt::WindowFlags())
$constructor=|new|QGraphicsItem *=Q_NULLPTR,Qt::WindowFlags=Qt::WindowFlags()

$prototype=~QPolarChart()
$deleteMethod

$prototype=void addAxis(QAbstractAxis *axis, PolarOrientation polarOrientation)
$method=|void|addAxis|QAbstractAxis *,QPolarChart::PolarOrientation

$prototype=QList<QAbstractAxis*> axes(PolarOrientations polarOrientation = PolarOrientations(PolarOrientationRadial | PolarOrientationAngular), QAbstractSeries *series = Q_NULLPTR) const
%% TODO: implementar
%% $method=|QList<QAbstractAxis *>|axes|QPolarChart::PolarOrientations=QPolarChart::PolarOrientations( QPolarChart::PolarOrientationRadial OR QPolarChart::PolarOrientationAngular ),QAbstractSeries *=Q_NULLPTR

$prototype=static PolarOrientation axisPolarOrientation(QAbstractAxis *axis)
$staticMethod=|QPolarChart::PolarOrientation|axisPolarOrientation|QAbstractAxis *

#pragma ENDDUMP
