%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QChart INHERIT QGraphicsWidget

   METHOD new
   METHOD delete

   METHOD addAxis
   METHOD addSeries
   METHOD animationDuration
   METHOD animationEasingCurve
   METHOD animationOptions
   METHOD axes
   METHOD axisX // DEPRECATED
   METHOD axisY // DEPRECATED
   METHOD backgroundBrush
   METHOD backgroundPen
   METHOD backgroundRoundness
   METHOD chartType
   METHOD createDefaultAxes
   METHOD isBackgroundVisible
   METHOD isDropShadowEnabled
   METHOD isPlotAreaBackgroundVisible
   METHOD isZoomed
   METHOD legend
   METHOD locale
   METHOD localizeNumbers
   METHOD mapToPosition
   METHOD mapToValue
   METHOD margins
   METHOD plotArea
   METHOD plotAreaBackgroundBrush
   METHOD plotAreaBackgroundPen
   METHOD removeAllSeries
   METHOD removeAxis
   METHOD removeSeries
   METHOD scroll
   METHOD series
   METHOD setAnimationDuration
   METHOD setAnimationEasingCurve
   METHOD setAnimationOptions
   METHOD setAxisX // DEPRECATED
   METHOD setAxisY // DEPRECATED
   METHOD setBackgroundBrush
   METHOD setBackgroundPen
   METHOD setBackgroundRoundness
   METHOD setBackgroundVisible
   METHOD setDropShadowEnabled
   METHOD setLocale
   METHOD setLocalizeNumbers
   METHOD setMargins
   METHOD setPlotAreaBackgroundBrush
   METHOD setPlotAreaBackgroundPen
   METHOD setPlotAreaBackgroundVisible
   METHOD setTheme
   METHOD setTitle
   METHOD setTitleBrush
   METHOD setTitleFont
   METHOD theme
   METHOD title
   METHOD titleBrush
   METHOD titleFont
   METHOD zoom
   METHOD zoomIn
   METHOD zoomOut
   METHOD zoomReset

   METHOD onPlotAreaChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QEasingCurve>
#include <QLocale>

using namespace QtCharts;

$prototype=explicit QChart(QGraphicsItem *parent = Q_NULLPTR, Qt::WindowFlags wFlags = Qt::WindowFlags())
$constructor=|new|QGraphicsItem *=Q_NULLPTR,Qt::WindowFlags=Qt::WindowFlags()

$prototype=explicit QChart(QChart::ChartType type, QGraphicsItem *parent, Qt::WindowFlags wFlags) (protected)

$prototype=~QChart()
$deleteMethod

%%
%% Q_PROPERTY(QChart::ChartTheme theme READ theme WRITE setTheme)
%%

$prototype=QChart::ChartTheme theme() const
$method=|QChart::ChartTheme|theme|

$prototype=void setTheme(QChart::ChartTheme theme)
$method=|void|setTheme|QChart::ChartTheme

%%
%% Q_PROPERTY(QString title READ title WRITE setTitle)
%%

$prototype=QString title() const
$method=|QString|title|

%%
%% Q_PROPERTY(bool backgroundVisible READ isBackgroundVisible WRITE setBackgroundVisible)
%%

$prototype=bool isBackgroundVisible() const
$method=|bool|isBackgroundVisible|

$prototype=void setBackgroundVisible(bool visible = true)
$method=|void|setBackgroundVisible|bool=true

%%
%% Q_PROPERTY(bool dropShadowEnabled READ isDropShadowEnabled WRITE setDropShadowEnabled)
%%

$prototype=bool isDropShadowEnabled() const
$method=|bool|isDropShadowEnabled|

$prototype=void setDropShadowEnabled(bool enabled = true)
$method=|void|setDropShadowEnabled|bool=true

%%
%% Q_PROPERTY(qreal backgroundRoundness READ backgroundRoundness WRITE setBackgroundRoundness)
%%

$prototype=qreal backgroundRoundness() const
$method=|qreal|backgroundRoundness|

$prototype=void setBackgroundRoundness(qreal diameter)
$method=|void|setBackgroundRoundness|qreal

%%
%% Q_PROPERTY(QChart::AnimationOptions animationOptions READ animationOptions WRITE setAnimationOptions)
%%

$prototype=AnimationOptions animationOptions() const
$method=|QChart::AnimationOptions|animationOptions|

$prototype=void setAnimationOptions(AnimationOptions options)
$method=|void|setAnimationOptions|QChart::AnimationOptions

%%
%% Q_PROPERTY(int animationDuration READ animationDuration WRITE setAnimationDuration)
%%

$prototype=int animationDuration() const
$method=|int|animationDuration|

$prototype=void setAnimationDuration(int msecs)
$method=|void|setAnimationDuration|int

%%
%% Q_PROPERTY(QEasingCurve animationEasingCurve READ animationEasingCurve WRITE setAnimationEasingCurve)
%%

$prototype=QEasingCurve animationEasingCurve() const
$method=|QEasingCurve|animationEasingCurve|

$prototype=void setAnimationEasingCurve(const QEasingCurve &curve)
$method=|void|setAnimationEasingCurve|const QEasingCurve &

%%
%% Q_PROPERTY(QMargins margins READ margins WRITE setMargins)
%%

$prototype=QMargins margins() const
$method=|QMargins|margins|

$prototype=void setMargins(const QMargins &margins)
$method=|void|setMargins|const QMargins &

%%
%% Q_PROPERTY(QRectF plotArea READ plotArea NOTIFY plotAreaChanged)
%%

$prototype=QRectF plotArea() const
$method=|QRectF|plotArea|

%%
%% Q_PROPERTY(bool plotAreaBackgroundVisible READ isPlotAreaBackgroundVisible WRITE setPlotAreaBackgroundVisible)
%%

$prototype=bool isPlotAreaBackgroundVisible() const
$method=|bool|isPlotAreaBackgroundVisible|

$prototype=void setPlotAreaBackgroundVisible(bool visible = true)
$method=|void|setPlotAreaBackgroundVisible|bool=true

%%
%% Q_PROPERTY(bool localizeNumbers READ localizeNumbers WRITE setLocalizeNumbers)
%%

$prototype=bool localizeNumbers() const
$method=|bool|localizeNumbers|

$prototype=void setLocalizeNumbers(bool localize)
$method=|void|setLocalizeNumbers|bool

%%
%% Q_PROPERTY(QLocale locale READ locale WRITE setLocale)
%%

$prototype=QLocale locale() const
$method=|QLocale|locale|

$prototype=void setLocale(const QLocale &locale)
$method=|void|setLocale|const QLocale &

%%
%% Q_PROPERTY(QChart::ChartType chartType READ chartType)
%%

$prototype=ChartType chartType() const
$method=|QChart::ChartType|chartType|

%%
%%
%%

$prototype=void addSeries(QAbstractSeries *series)
$method=|void|addSeries|QAbstractSeries *

$prototype=void removeSeries(QAbstractSeries *series)
$method=|void|removeSeries|QAbstractSeries *

$prototype=void removeAllSeries()
$method=|void|removeAllSeries|

$prototype=QList<QAbstractSeries *> series() const
$method=|QList<QAbstractSeries *>|series|

$prototype=void setAxisX(QAbstractAxis *axis, QAbstractSeries *series = Q_NULLPTR) // DEPRECATED
$method=|void|setAxisX|QAbstractAxis *,QAbstractSeries *=Q_NULLPTR

$prototype=void setAxisY(QAbstractAxis *axis, QAbstractSeries *series = Q_NULLPTR) // DEPRECATED
$method=|void|setAxisY|QAbstractAxis *,QAbstractSeries *=Q_NULLPTR

$prototype=QAbstractAxis *axisX(QAbstractSeries *series = Q_NULLPTR) const         // DEPRECATED
$method=|QAbstractAxis *|axisX|QAbstractSeries *=Q_NULLPTR

$prototype=QAbstractAxis *axisY(QAbstractSeries *series = Q_NULLPTR) const         // DEPRECATED
$method=|QAbstractAxis *|axisY|QAbstractSeries *=Q_NULLPTR

$prototype=void addAxis(QAbstractAxis *axis, Qt::Alignment alignment)
$method=|void|addAxis|QAbstractAxis *,Qt::Alignment

$prototype=void removeAxis(QAbstractAxis *axis)
$method=|void|removeAxis|QAbstractAxis *

$prototype=QList<QAbstractAxis*> axes(Qt::Orientations orientation = Qt::Horizontal|Qt::Vertical, QAbstractSeries *series = Q_NULLPTR) const
$method=|QList<QAbstractAxis *>|axes|Qt::Orientations=Qt::Horizontal OR Qt::Vertical,QAbstractSeries *=Q_NULLPTR

$prototype=void createDefaultAxes()
$method=|void|createDefaultAxes|

$prototype=void setTitle(const QString &title)
$method=|void|setTitle|const QString &

$prototype=void setTitleFont(const QFont &font)
$method=|void|setTitleFont|const QFont &

$prototype=QFont titleFont() const
$method=|QFont|titleFont|

$prototype=void setTitleBrush(const QBrush &brush)
$method=|void|setTitleBrush|const QBrush &

$prototype=QBrush titleBrush() const
$method=|QBrush|titleBrush|

$prototype=void setBackgroundBrush(const QBrush &brush)
$method=|void|setBackgroundBrush|const QBrush &

$prototype=QBrush backgroundBrush() const
$method=|QBrush|backgroundBrush|

$prototype=void setBackgroundPen(const QPen &pen)
$method=|void|setBackgroundPen|const QPen &

$prototype=QPen backgroundPen() const
$method=|QPen|backgroundPen|

$prototype=void zoomIn()
$internalMethod=|void|zoomIn,zoomIn1|

$prototype=void zoomIn(const QRectF &rect)
$internalMethod=|void|zoomIn,zoomIn2|const QRectF &

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

$prototype=void zoomOut()
$method=|void|zoomOut|

$prototype=void zoom(qreal factor)
$method=|void|zoom|qreal

$prototype=void zoomReset()
$method=|void|zoomReset|

$prototype=bool isZoomed()
$method=|bool|isZoomed|

$prototype=void scroll(qreal dx, qreal dy)
$method=|void|scroll|qreal,qreal

$prototype=QLegend *legend() const
$method=|QLegend *|legend|

$prototype=void setPlotAreaBackgroundBrush(const QBrush &brush)
$method=|void|setPlotAreaBackgroundBrush|const QBrush &

$prototype=QBrush plotAreaBackgroundBrush() const
$method=|QBrush|plotAreaBackgroundBrush|

$prototype=void setPlotAreaBackgroundPen(const QPen &pen)
$method=|void|setPlotAreaBackgroundPen|const QPen &

$prototype=QPen plotAreaBackgroundPen() const
$method=|QPen|plotAreaBackgroundPen|

$prototype=QPointF mapToValue(const QPointF &position, QAbstractSeries *series = Q_NULLPTR)
$method=|QPointF|mapToValue|const QPointF &,QAbstractSeries *=Q_NULLPTR

$prototype=QPointF mapToPosition(const QPointF &value, QAbstractSeries *series = Q_NULLPTR)
$method=|QPointF|mapToPosition|const QPointF &,QAbstractSeries *=Q_NULLPTR

#pragma ENDDUMP
