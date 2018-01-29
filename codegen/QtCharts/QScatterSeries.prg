%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QScatterSeries INHERIT QXYSeries

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

   METHOD onBorderColorChanged
   METHOD onColorChanged
   METHOD onMarkerShapeChanged
   METHOD onMarkerSizeChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QScatterSeries(QObject *parent = Q_NULLPTR)
$constructor=|new|QObject *=Q_NULLPTR

$prototype=~QScatterSeries()
$deleteMethod

%%
%% Q_PROPERTY(QColor color READ color WRITE setColor NOTIFY colorChanged)
%%

$prototype=QColor color() const
$method=|QColor|color|

$prototype=void setColor(const QColor &color)
$method=|void|setColor|const QColor &

%%
%% Q_PROPERTY(QColor borderColor READ borderColor WRITE setBorderColor NOTIFY borderColorChanged)
%%

$prototype=QColor borderColor() const
$method=|QColor|borderColor|

$prototype=void setBorderColor(const QColor &color)
$method=|void|setBorderColor|const QColor &

%%
%% Q_PROPERTY(MarkerShape markerShape READ markerShape WRITE setMarkerShape NOTIFY markerShapeChanged)
%%

$prototype=MarkerShape markerShape() const
$method=|QScatterSeries::MarkerShape|markerShape|

$prototype=void setMarkerShape(MarkerShape shape)
$method=|void|setMarkerShape|QScatterSeries::MarkerShape

%%
%% Q_PROPERTY(qreal markerSize READ markerSize WRITE setMarkerSize NOTIFY markerSizeChanged)
%%

$prototype=qreal markerSize() const
$method=|qreal|markerSize|

$prototype=void setMarkerSize(qreal size)
$method=|void|setMarkerSize|qreal

%%
%% Q_PROPERTY(QBrush brush READ brush WRITE setBrush)
%%

$prototype=QBrush brush() const
$method=|QBrush|brush|

$prototype=void setBrush(const QBrush &brush)
$method=|void|setBrush|const QBrush &

%%
%%
%%

$prototype=QAbstractSeries::SeriesType type() const
$method=|QAbstractSeries::SeriesType|type|

$prototype=void setPen(const QPen &pen)
$method=|void|setPen|const QPen &

#pragma ENDDUMP
