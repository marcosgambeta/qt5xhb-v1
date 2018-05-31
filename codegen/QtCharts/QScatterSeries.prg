%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QXYSeries

   METHOD new
   METHOD delete

   METHOD borderColor
   METHOD brush
   METHOD color
   METHOD markerShape
   METHOD markerSize
   METHOD setBorderColor
   METHOD setBrush
   METHOD setColor
   METHOD setMarkerShape
   METHOD setMarkerSize
   METHOD setPen
   METHOD type

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,7,0

using namespace QtCharts;

$prototype=explicit QScatterSeries(QObject *parent = Q_NULLPTR)
$constructor=5,7,0|new|QObject *=Q_NULLPTR

$prototype=~QScatterSeries()
$deleteMethod=5,7,0

%%
%% Q_PROPERTY(QColor color READ color WRITE setColor NOTIFY colorChanged)
%%

$prototype=QColor color() const
$method=5,7,0|QColor|color|

$prototype=void setColor(const QColor &color)
$method=5,7,0|void|setColor|const QColor &

%%
%% Q_PROPERTY(QColor borderColor READ borderColor WRITE setBorderColor NOTIFY borderColorChanged)
%%

$prototype=QColor borderColor() const
$method=5,7,0|QColor|borderColor|

$prototype=void setBorderColor(const QColor &color)
$method=5,7,0|void|setBorderColor|const QColor &

%%
%% Q_PROPERTY(MarkerShape markerShape READ markerShape WRITE setMarkerShape NOTIFY markerShapeChanged)
%%

$prototype=MarkerShape markerShape() const
$method=5,7,0|QScatterSeries::MarkerShape|markerShape|

$prototype=void setMarkerShape(MarkerShape shape)
$method=5,7,0|void|setMarkerShape|QScatterSeries::MarkerShape

%%
%% Q_PROPERTY(qreal markerSize READ markerSize WRITE setMarkerSize NOTIFY markerSizeChanged)
%%

$prototype=qreal markerSize() const
$method=5,7,0|qreal|markerSize|

$prototype=void setMarkerSize(qreal size)
$method=5,7,0|void|setMarkerSize|qreal

%%
%% Q_PROPERTY(QBrush brush READ brush WRITE setBrush)
%%

$prototype=QBrush brush() const
$method=5,7,0|QBrush|brush|

$prototype=void setBrush(const QBrush &brush)
$method=5,7,0|void|setBrush|const QBrush &

%%
%%
%%

$prototype=QAbstractSeries::SeriesType type() const
$method=5,7,0|QAbstractSeries::SeriesType|type|

$prototype=void setPen(const QPen &pen)
$method=5,7,0|void|setPen|const QPen &

$beginSignals
$signal=5,7,0|borderColorChanged(QColor)
$signal=5,7,0|colorChanged(QColor)
$signal=5,7,0|markerShapeChanged(QScatterSeries::MarkerShape)
$signal=5,7,0|markerSizeChanged(qreal)
$endSignals

#pragma ENDDUMP
