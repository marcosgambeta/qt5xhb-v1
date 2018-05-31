%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QGraphicsWidget

%%   METHOD new
   METHOD delete

   METHOD alignment
   METHOD attachToChart
   METHOD borderColor
   METHOD brush
   METHOD color
   METHOD detachFromChart
   METHOD font
   METHOD isAttachedToChart
   METHOD isBackgroundVisible
   METHOD labelBrush
   METHOD labelColor
   METHOD markers
   METHOD markerShape
   METHOD paint
   METHOD pen
   METHOD reverseMarkers
   METHOD setAlignment
   METHOD setBackgroundVisible
   METHOD setBorderColor
   METHOD setBrush
   METHOD setColor
   METHOD setFont
   METHOD setLabelBrush
   METHOD setLabelColor
   METHOD setMarkerShape
   METHOD setPen
   METHOD setReverseMarkers
   METHOD setShowToolTips
   METHOD showToolTips

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,7,0

using namespace QtCharts;

$prototype=explicit QLegend(QChart *chart) (private)

$prototype=~QLegend()
$deleteMethod=5,7,0

%%
%% Q_PROPERTY(Qt::Alignment alignment READ alignment WRITE setAlignment)
%%

$prototype=Qt::Alignment alignment() const
$method=5,7,0|Qt::Alignment|alignment|

%%
%% Q_PROPERTY(bool backgroundVisible READ isBackgroundVisible WRITE setBackgroundVisible NOTIFY backgroundVisibleChanged)
%%

$prototype=bool isBackgroundVisible() const
$method=5,7,0|bool|isBackgroundVisible|

$prototype=void setBackgroundVisible(bool visible = true)
$method=5,7,0|void|setBackgroundVisible|bool=true

%%
%% Q_PROPERTY(QColor color READ color WRITE setColor NOTIFY colorChanged)
%%

$prototype=QColor color()
$method=5,7,0|QColor|color|

$prototype=void setColor(QColor color)
$method=5,7,0|void|setColor|QColor

%%
%% Q_PROPERTY(QColor borderColor READ borderColor WRITE setBorderColor NOTIFY borderColorChanged)
%%

$prototype=QColor borderColor()
$method=5,7,0|QColor|borderColor|

$prototype=void setBorderColor(QColor color)
$method=5,7,0|void|setBorderColor|QColor

%%
%% Q_PROPERTY(QFont font READ font WRITE setFont NOTIFY fontChanged)
%%

$prototype=QFont font() const
$method=5,7,0|QFont|font|

$prototype=void setFont(const QFont &font)
$method=5,7,0|void|setFont|const QFont &

%%
%% Q_PROPERTY(QColor labelColor READ labelColor WRITE setLabelColor NOTIFY labelColorChanged)
%%

$prototype=QColor labelColor() const
$method=5,7,0|QColor|labelColor|

$prototype=void setLabelColor(QColor color)
$method=5,7,0|void|setLabelColor|QColor

%%
%% Q_PROPERTY(bool reverseMarkers READ reverseMarkers WRITE setReverseMarkers NOTIFY reverseMarkersChanged)
%%

$prototype=bool reverseMarkers()
$method=5,7,0|bool|reverseMarkers|

$prototype=void setReverseMarkers(bool reverseMarkers = true)
$method=5,7,0|void|setReverseMarkers|bool=true

%%
%% Q_PROPERTY(bool showToolTips READ showToolTips WRITE setShowToolTips NOTIFY showToolTipsChanged)
%%

$prototype=bool showToolTips() const
$method=5,7,0|bool|showToolTips|

$prototype=void setShowToolTips(bool show)
$method=5,7,0|void|setShowToolTips|bool

%%
%% Q_PROPERTY(MarkerShape markerShape READ markerShape WRITE setMarkerShape NOTIFY markerShapeChanged)
%%

$prototype=MarkerShape markerShape() const
$method=5,9,0|QLegend::MarkerShape|markerShape|

$prototype=void setMarkerShape(MarkerShape shape)
$method=5,9,0|void|setMarkerShape|QLegend::MarkerShape

%%
%%
%%

$prototype=void paint(QPainter *painter, const QStyleOptionGraphicsItem *option, QWidget *widget = Q_NULLPTR)
$method=5,7,0|void|paint|QPainter *,const QStyleOptionGraphicsItem *,QWidget *=Q_NULLPTR

$prototype=void setBrush(const QBrush &brush)
$method=5,7,0|void|setBrush|const QBrush &

$prototype=QBrush brush() const
$method=5,7,0|QBrush|brush|

$prototype=void setPen(const QPen &pen)
$method=5,7,0|void|setPen|const QPen &

$prototype=QPen pen() const
$method=5,7,0|QPen|pen|

$prototype=void setLabelBrush(const QBrush &brush)
$method=5,7,0|void|setLabelBrush|const QBrush &

$prototype=QBrush labelBrush() const
$method=5,7,0|QBrush|labelBrush|

$prototype=void setAlignment(Qt::Alignment alignment)
$method=5,7,0|void|setAlignment|Qt::Alignment

$prototype=void detachFromChart()
$method=5,7,0|void|detachFromChart|

$prototype=void attachToChart()
$method=5,7,0|void|attachToChart|

$prototype=bool isAttachedToChart()
$method=5,7,0|bool|isAttachedToChart|

$prototype=QList <QLegendMarker*> markers(QAbstractSeries *series = Q_NULLPTR) const
$method=5,7,0|QList<QLegendMarker *>|markers|QAbstractSeries *=Q_NULLPTR

$prototype=void hideEvent(QHideEvent *event) (protected)

$prototype=void showEvent(QShowEvent *event) (protected)

$beginSignals
$signal=5,7,0|backgroundVisibleChanged(bool)
$signal=5,7,0|borderColorChanged(QColor)
$signal=5,7,0|colorChanged(QColor)
$signal=5,7,0|fontChanged(QFont)
$signal=5,7,0|labelColorChanged(QColor)
$signal=5,9,0|markerShapeChanged(QLegend::MarkerShape)
$signal=5,7,0|reverseMarkersChanged(bool)
$signal=5,7,0|showToolTipsChanged(bool)
$endSignals

#pragma ENDDUMP
