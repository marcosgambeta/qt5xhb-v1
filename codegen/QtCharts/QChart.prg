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

$beginClassFrom=QGraphicsWidget

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,7,0

#include <QEasingCurve>
#include <QLocale>

using namespace QtCharts;

$prototype=explicit QChart(QGraphicsItem *parent = Q_NULLPTR, Qt::WindowFlags wFlags = Qt::WindowFlags())
$constructor=5,7,0|new|QGraphicsItem *=Q_NULLPTR,Qt::WindowFlags=Qt::WindowFlags()

$prototype=explicit QChart(QChart::ChartType type, QGraphicsItem *parent, Qt::WindowFlags wFlags) [protected]

$prototype=~QChart()
$deleteMethod=5,7,0

%%
%% Q_PROPERTY(QChart::ChartTheme theme READ theme WRITE setTheme)
%%

$prototype=QChart::ChartTheme theme() const
$method=5,7,0|QChart::ChartTheme|theme|

$prototype=void setTheme(QChart::ChartTheme theme)
$method=5,7,0|void|setTheme|QChart::ChartTheme

%%
%% Q_PROPERTY(QString title READ title WRITE setTitle)
%%

$prototype=QString title() const
$method=5,7,0|QString|title|

%%
%% Q_PROPERTY(bool backgroundVisible READ isBackgroundVisible WRITE setBackgroundVisible)
%%

$prototype=bool isBackgroundVisible() const
$method=5,7,0|bool|isBackgroundVisible|

$prototype=void setBackgroundVisible(bool visible = true)
$method=5,7,0|void|setBackgroundVisible|bool=true

%%
%% Q_PROPERTY(bool dropShadowEnabled READ isDropShadowEnabled WRITE setDropShadowEnabled)
%%

$prototype=bool isDropShadowEnabled() const
$method=5,7,0|bool|isDropShadowEnabled|

$prototype=void setDropShadowEnabled(bool enabled = true)
$method=5,7,0|void|setDropShadowEnabled|bool=true

%%
%% Q_PROPERTY(qreal backgroundRoundness READ backgroundRoundness WRITE setBackgroundRoundness)
%%

$prototype=qreal backgroundRoundness() const
$method=5,7,0|qreal|backgroundRoundness|

$prototype=void setBackgroundRoundness(qreal diameter)
$method=5,7,0|void|setBackgroundRoundness|qreal

%%
%% Q_PROPERTY(QChart::AnimationOptions animationOptions READ animationOptions WRITE setAnimationOptions)
%%

$prototype=AnimationOptions animationOptions() const
$method=5,7,0|QChart::AnimationOptions|animationOptions|

$prototype=void setAnimationOptions(AnimationOptions options)
$method=5,7,0|void|setAnimationOptions|QChart::AnimationOptions

%%
%% Q_PROPERTY(int animationDuration READ animationDuration WRITE setAnimationDuration)
%%

$prototype=int animationDuration() const
$method=5,7,0|int|animationDuration|

$prototype=void setAnimationDuration(int msecs)
$method=5,7,0|void|setAnimationDuration|int

%%
%% Q_PROPERTY(QEasingCurve animationEasingCurve READ animationEasingCurve WRITE setAnimationEasingCurve)
%%

$prototype=QEasingCurve animationEasingCurve() const
$method=5,7,0|QEasingCurve|animationEasingCurve|

$prototype=void setAnimationEasingCurve(const QEasingCurve &curve)
$method=5,7,0|void|setAnimationEasingCurve|const QEasingCurve &

%%
%% Q_PROPERTY(QMargins margins READ margins WRITE setMargins)
%%

$prototype=QMargins margins() const
$method=5,7,0|QMargins|margins|

$prototype=void setMargins(const QMargins &margins)
$method=5,7,0|void|setMargins|const QMargins &

%%
%% Q_PROPERTY(QRectF plotArea READ plotArea NOTIFY plotAreaChanged)
%%

$prototype=QRectF plotArea() const
$method=5,7,0|QRectF|plotArea|

%%
%% Q_PROPERTY(bool plotAreaBackgroundVisible READ isPlotAreaBackgroundVisible WRITE setPlotAreaBackgroundVisible)
%%

$prototype=bool isPlotAreaBackgroundVisible() const
$method=5,7,0|bool|isPlotAreaBackgroundVisible|

$prototype=void setPlotAreaBackgroundVisible(bool visible = true)
$method=5,7,0|void|setPlotAreaBackgroundVisible|bool=true

%%
%% Q_PROPERTY(bool localizeNumbers READ localizeNumbers WRITE setLocalizeNumbers)
%%

$prototype=bool localizeNumbers() const
$method=5,7,0|bool|localizeNumbers|

$prototype=void setLocalizeNumbers(bool localize)
$method=5,7,0|void|setLocalizeNumbers|bool

%%
%% Q_PROPERTY(QLocale locale READ locale WRITE setLocale)
%%

$prototype=QLocale locale() const
$method=5,7,0|QLocale|locale|

$prototype=void setLocale(const QLocale &locale)
$method=5,7,0|void|setLocale|const QLocale &

%%
%% Q_PROPERTY(QChart::ChartType chartType READ chartType)
%%

$prototype=ChartType chartType() const
$method=5,7,0|QChart::ChartType|chartType|

%%
%%
%%

$prototype=void addSeries(QAbstractSeries *series)
$method=5,7,0|void|addSeries|QAbstractSeries *

$prototype=void removeSeries(QAbstractSeries *series)
$method=5,7,0|void|removeSeries|QAbstractSeries *

$prototype=void removeAllSeries()
$method=5,7,0|void|removeAllSeries|

$prototype=QList<QAbstractSeries *> series() const
$method=5,7,0|QList<QAbstractSeries *>|series|

$prototype=void setAxisX(QAbstractAxis *axis, QAbstractSeries *series = Q_NULLPTR) // DEPRECATED
$method=5,7,0|void|setAxisX|QAbstractAxis *,QAbstractSeries *=Q_NULLPTR

$prototype=void setAxisY(QAbstractAxis *axis, QAbstractSeries *series = Q_NULLPTR) // DEPRECATED
$method=5,7,0|void|setAxisY|QAbstractAxis *,QAbstractSeries *=Q_NULLPTR

$prototype=QAbstractAxis *axisX(QAbstractSeries *series = Q_NULLPTR) const         // DEPRECATED
$method=5,7,0|QAbstractAxis *|axisX|QAbstractSeries *=Q_NULLPTR

$prototype=QAbstractAxis *axisY(QAbstractSeries *series = Q_NULLPTR) const         // DEPRECATED
$method=5,7,0|QAbstractAxis *|axisY|QAbstractSeries *=Q_NULLPTR

$prototype=void addAxis(QAbstractAxis *axis, Qt::Alignment alignment)
$method=5,7,0|void|addAxis|QAbstractAxis *,Qt::Alignment

$prototype=void removeAxis(QAbstractAxis *axis)
$method=5,7,0|void|removeAxis|QAbstractAxis *

$prototype=QList<QAbstractAxis*> axes(Qt::Orientations orientation = Qt::Horizontal|Qt::Vertical, QAbstractSeries *series = Q_NULLPTR) const
$method=5,7,0|QList<QAbstractAxis *>|axes|Qt::Orientations=Qt::Horizontal OR Qt::Vertical,QAbstractSeries *=Q_NULLPTR

$prototype=void createDefaultAxes()
$method=5,7,0|void|createDefaultAxes|

$prototype=void setTitle(const QString &title)
$method=5,7,0|void|setTitle|const QString &

$prototype=void setTitleFont(const QFont &font)
$method=5,7,0|void|setTitleFont|const QFont &

$prototype=QFont titleFont() const
$method=5,7,0|QFont|titleFont|

$prototype=void setTitleBrush(const QBrush &brush)
$method=5,7,0|void|setTitleBrush|const QBrush &

$prototype=QBrush titleBrush() const
$method=5,7,0|QBrush|titleBrush|

$prototype=void setBackgroundBrush(const QBrush &brush)
$method=5,7,0|void|setBackgroundBrush|const QBrush &

$prototype=QBrush backgroundBrush() const
$method=5,7,0|QBrush|backgroundBrush|

$prototype=void setBackgroundPen(const QPen &pen)
$method=5,7,0|void|setBackgroundPen|const QPen &

$prototype=QPen backgroundPen() const
$method=5,7,0|QPen|backgroundPen|

$prototype=void zoomIn()
$internalMethod=5,7,0|void|zoomIn,zoomIn1|

$prototype=void zoomIn(const QRectF &rect)
$internalMethod=5,7,0|void|zoomIn,zoomIn2|const QRectF &

//[1]void zoomIn()
//[2]void zoomIn(const QRectF &rect)

HB_FUNC_STATIC( QCHART_ZOOMIN )
{
  if( ISNUMPAR(0) )
  {
    QChart_zoomIn1();
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QChart_zoomIn2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=zoomIn

$prototype=void zoomOut()
$method=5,7,0|void|zoomOut|

$prototype=void zoom(qreal factor)
$method=5,7,0|void|zoom|qreal

$prototype=void zoomReset()
$method=5,7,0|void|zoomReset|

$prototype=bool isZoomed()
$method=5,7,0|bool|isZoomed|

$prototype=void scroll(qreal dx, qreal dy)
$method=5,7,0|void|scroll|qreal,qreal

$prototype=QLegend *legend() const
$method=5,7,0|QLegend *|legend|

$prototype=void setPlotAreaBackgroundBrush(const QBrush &brush)
$method=5,7,0|void|setPlotAreaBackgroundBrush|const QBrush &

$prototype=QBrush plotAreaBackgroundBrush() const
$method=5,7,0|QBrush|plotAreaBackgroundBrush|

$prototype=void setPlotAreaBackgroundPen(const QPen &pen)
$method=5,7,0|void|setPlotAreaBackgroundPen|const QPen &

$prototype=QPen plotAreaBackgroundPen() const
$method=5,7,0|QPen|plotAreaBackgroundPen|

$prototype=QPointF mapToValue(const QPointF &position, QAbstractSeries *series = Q_NULLPTR)
$method=5,7,0|QPointF|mapToValue|const QPointF &,QAbstractSeries *=Q_NULLPTR

$prototype=QPointF mapToPosition(const QPointF &value, QAbstractSeries *series = Q_NULLPTR)
$method=5,7,0|QPointF|mapToPosition|const QPointF &,QAbstractSeries *=Q_NULLPTR

$beginSignals
$signal=5,7,0|plotAreaChanged(QRectF)
$endSignals

#pragma ENDDUMP
