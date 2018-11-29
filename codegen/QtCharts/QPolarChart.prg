%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCharts

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QChart

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,7,0

using namespace QtCharts;

$prototype=explicit QPolarChart(QGraphicsItem *parent = Q_NULLPTR, Qt::WindowFlags wFlags = Qt::WindowFlags())
$constructor=5,7,0|new|QGraphicsItem *=Q_NULLPTR,Qt::WindowFlags=Qt::WindowFlags()

$prototype=~QPolarChart()
$deleteMethod=5,7,0

$prototype=void addAxis(QAbstractAxis *axis, PolarOrientation polarOrientation)
$method=5,7,0|void|addAxis|QAbstractAxis *,QPolarChart::PolarOrientation

$prototype=QList<QAbstractAxis*> axes(PolarOrientations polarOrientation = PolarOrientations(PolarOrientationRadial | PolarOrientationAngular), QAbstractSeries *series = Q_NULLPTR) const
%% TODO: implementar
%% $method=5,7,0|QList<QAbstractAxis *>|axes|QPolarChart::PolarOrientations=QPolarChart::PolarOrientations( QPolarChart::PolarOrientationRadial OR QPolarChart::PolarOrientationAngular ),QAbstractSeries *=Q_NULLPTR

$prototype=static PolarOrientation axisPolarOrientation(QAbstractAxis *axis)
$staticMethod=|QPolarChart::PolarOrientation|axisPolarOrientation|QAbstractAxis *

#pragma ENDDUMP
