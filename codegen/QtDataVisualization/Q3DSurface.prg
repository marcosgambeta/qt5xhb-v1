%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS Q3DSurface INHERIT QAbstract3DGraph

   METHOD new
   METHOD delete

   METHOD addAxis
   METHOD addSeries
   METHOD axes
   METHOD axisX
   METHOD axisY
   METHOD axisZ
   METHOD flipHorizontalGrid
   METHOD releaseAxis
   METHOD removeSeries
   METHOD selectedSeries
   METHOD seriesList
   METHOD setAxisX
   METHOD setAxisY
   METHOD setAxisZ
   METHOD setFlipHorizontalGrid

   METHOD onAxisXChanged
   METHOD onAxisYChanged
   METHOD onAxisZChanged
   METHOD onFlipHorizontalGridChanged
   METHOD onSelectedSeriesChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit Q3DSurface(const QSurfaceFormat *format = Q_NULLPTR, QWindow *parent = Q_NULLPTR)
$constructor=|new|const QSurfaceFormat *=Q_NULLPTR,QWindow *=Q_NULLPTR

$prototype=virtual ~Q3DSurface()
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
%% Q_PROPERTY(QSurface3DSeries *selectedSeries READ selectedSeries NOTIFY selectedSeriesChanged)
%%

$prototype=QSurface3DSeries *selectedSeries() const
$method=|QSurface3DSeries *|selectedSeries|

%%
%% Q_PROPERTY(bool flipHorizontalGrid READ flipHorizontalGrid WRITE setFlipHorizontalGrid NOTIFY flipHorizontalGridChanged)
%%

$prototype=bool flipHorizontalGrid() const
$method=|bool|flipHorizontalGrid|

$prototype=void setFlipHorizontalGrid(bool flip)
$method=|void|setFlipHorizontalGrid|bool

%%
%%
%%

$prototype=void addSeries(QSurface3DSeries *series)
$method=|void|addSeries|QSurface3DSeries *

$prototype=void removeSeries(QSurface3DSeries *series)
$method=|void|removeSeries|QSurface3DSeries *

$prototype=QList<QSurface3DSeries *> seriesList() const
$method=|QList<QSurface3DSeries *>|seriesList|

$prototype=void addAxis(QValue3DAxis *axis)
$method=|void|addAxis|QValue3DAxis *

$prototype=void releaseAxis(QValue3DAxis *axis)
$method=|void|releaseAxis|QValue3DAxis *

$prototype=QList<QValue3DAxis *> axes() const
$method=|QList<QValue3DAxis *>|axes|

#pragma ENDDUMP
