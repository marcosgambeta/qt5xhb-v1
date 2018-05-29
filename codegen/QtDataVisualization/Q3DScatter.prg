%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstract3DGraph

   METHOD new
   METHOD delete

   METHOD addAxis
   METHOD addSeries
   METHOD axes
   METHOD axisX
   METHOD axisY
   METHOD axisZ
   METHOD releaseAxis
   METHOD removeSeries
   METHOD selectedSeries
   METHOD seriesList
   METHOD setAxisX
   METHOD setAxisY
   METHOD setAxisZ

   METHOD onAxisXChanged
   METHOD onAxisYChanged
   METHOD onAxisZChanged
   METHOD onSelectedSeriesChanged

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtDataVisualization;

$prototype=explicit Q3DScatter(const QSurfaceFormat *format = Q_NULLPTR, QWindow *parent = Q_NULLPTR)
$constructor=|new|const QSurfaceFormat *=Q_NULLPTR,QWindow *=Q_NULLPTR

$prototype=virtual ~Q3DScatter()
$deleteMethod

%%
%% Q_PROPERTY(QValue3DAxis *axisX READ axisX WRITE setAxisX NOTIFY axisXChanged)
%%

$prototype=QValue3DAxis *axisX() const
$method=|QValue3DAxis *|axisX|

$prototype=void setAxisX(QValue3DAxis *axis)
$method=|void|setAxisX|QValue3DAxis *

%%
%% Q_PROPERTY(QValue3DAxis *axisY READ axisY WRITE setAxisY NOTIFY axisYChanged)
%%

$prototype=QValue3DAxis *axisY() const
$method=|QValue3DAxis *|axisY|

$prototype=void setAxisY(QValue3DAxis *axis)
$method=|void|setAxisY|QValue3DAxis *

%%
%% Q_PROPERTY(QValue3DAxis *axisZ READ axisZ WRITE setAxisZ NOTIFY axisZChanged)
%%

$prototype=QValue3DAxis *axisZ() const
$method=|QValue3DAxis *|axisZ|

$prototype=void setAxisZ(QValue3DAxis *axis)
$method=|void|setAxisZ|QValue3DAxis *

%%
%% Q_PROPERTY(QScatter3DSeries *selectedSeries READ selectedSeries NOTIFY selectedSeriesChanged)
%%

$prototype=QScatter3DSeries *selectedSeries() const
$method=|QScatter3DSeries *|selectedSeries|

%%
%%
%%

$prototype=void addSeries(QScatter3DSeries *series)
$method=|void|addSeries|QScatter3DSeries *

$prototype=void removeSeries(QScatter3DSeries *series)
$method=|void|removeSeries|QScatter3DSeries *

$prototype=QList<QScatter3DSeries *> seriesList() const
$method=|QList<QScatter3DSeries *>|seriesList|

$prototype=void addAxis(QValue3DAxis *axis)
$method=|void|addAxis|QValue3DAxis *

$prototype=void releaseAxis(QValue3DAxis *axis)
$method=|void|releaseAxis|QValue3DAxis *

$prototype=QList<QValue3DAxis *> axes() const
$method=|QList<QValue3DAxis *>|axes|

$beginSignals
$signal=|axisXChanged(QValue3DAxis*)
$signal=|axisYChanged(QValue3DAxis*)
$signal=|axisZChanged(QValue3DAxis*)
$signal=|selectedSeriesChanged(QScatter3DSeries*)
$endSignals

#pragma ENDDUMP
