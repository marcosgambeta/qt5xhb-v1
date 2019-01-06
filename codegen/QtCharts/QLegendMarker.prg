%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCharts

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,7,0

#include <QAbstractSeries>

using namespace QtCharts;

$prototype=explicit QLegendMarker(QLegendMarkerPrivate &d, QObject *parent = Q_NULLPTR) [protected]

$prototype=virtual ~QLegendMarker()
$deleteMethod=5,7,0


%%
%% Q_PROPERTY(QString label READ label WRITE setLabel NOTIFY labelChanged)
%%

$prototype=QString label() const
$method=5,7,0|QString|label|

$prototype=void setLabel(const QString &label)
$method=5,7,0|void|setLabel|const QString &

%%
%% Q_PROPERTY(QBrush labelBrush READ labelBrush WRITE setLabelBrush NOTIFY labelBrushChanged)
%%

$prototype=QBrush labelBrush() const
$method=5,7,0|QBrush|labelBrush|

$prototype=void setLabelBrush(const QBrush &brush)
$method=5,7,0|void|setLabelBrush|const QBrush &

%%
%% Q_PROPERTY(QFont font READ font WRITE setFont NOTIFY fontChanged)
%%

$prototype=QFont font() const
$method=5,7,0|QFont|font|

$prototype=void setFont(const QFont &font)
$method=5,7,0|void|setFont|const QFont &

%%
%% Q_PROPERTY(QPen pen READ pen WRITE setPen NOTIFY penChanged)
%%

$prototype=QPen pen() const
$method=5,7,0|QPen|pen|

$prototype=void setPen(const QPen &pen)
$method=5,7,0|void|setPen|const QPen &

%%
%% Q_PROPERTY(QBrush brush READ brush WRITE setBrush NOTIFY brushChanged)
%%

$prototype=QBrush brush() const
$method=5,7,0|QBrush|brush|

$prototype=void setBrush(const QBrush &brush)
$method=5,7,0|void|setBrush|const QBrush &

%%
%% Q_PROPERTY(bool visible READ isVisible WRITE setVisible NOTIFY visibleChanged)
%%

$prototype=bool isVisible() const
$method=5,7,0|bool|isVisible|

$prototype=void setVisible(bool visible)
$method=5,7,0|void|setVisible|bool

%%
%% Q_PROPERTY(QLegend::MarkerShape shape READ shape WRITE setShape NOTIFY shapeChanged)
%%

$prototype=QLegend::MarkerShape shape() const
$method=5,9,0|QLegend::MarkerShape|shape|

$prototype=void setShape(QLegend::MarkerShape shape)
$method=5,9,0|void|setShape|QLegend::MarkerShape

%%
%%
%%

$prototype=virtual LegendMarkerType type() = 0
$virtualMethod=5,7,0|QLegendMarker::LegendMarkerType|type|

$prototype=virtual QAbstractSeries* series() = 0
$virtualMethod=5,7,0|QAbstractSeries *|series|

$beginSignals
$signal=5,7,0|brushChanged()
$signal=5,7,0|clicked()
$signal=5,7,0|fontChanged()
$signal=5,7,0|hovered(bool)
$signal=5,7,0|labelBrushChanged()
$signal=5,7,0|labelChanged()
$signal=5,7,0|penChanged()
$signal=5,9,0|shapeChanged()
$signal=5,7,0|visibleChanged()
$endSignals

#pragma ENDDUMP
