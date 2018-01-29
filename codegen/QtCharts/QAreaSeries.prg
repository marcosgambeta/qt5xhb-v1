%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QAreaSeries INHERIT QAbstractSeries

   METHOD new
   METHOD delete

   METHOD borderColor
   METHOD brush
   METHOD color
   METHOD lowerSeries
   METHOD pen
   METHOD pointLabelsClipping
   METHOD pointLabelsColor
   METHOD pointLabelsFont
   METHOD pointLabelsFormat
   METHOD pointLabelsVisible
   METHOD pointsVisible
   METHOD setBorderColor
   METHOD setBrush
   METHOD setColor
   METHOD setLowerSeries
   METHOD setPen
   METHOD setPointLabelsClipping
   METHOD setPointLabelsColor
   METHOD setPointLabelsFont
   METHOD setPointLabelsFormat
   METHOD setPointLabelsVisible
   METHOD setPointsVisible
   METHOD setUpperSeries
   METHOD type
   METHOD upperSeries

   METHOD onBorderColorChanged
   METHOD onClicked
   METHOD onColorChanged
   METHOD onDoubleClicked
   METHOD onHovered
   METHOD onPointLabelsClippingChanged
   METHOD onPointLabelsColorChanged
   METHOD onPointLabelsFontChanged
   METHOD onPointLabelsFormatChanged
   METHOD onPointLabelsVisibilityChanged
   METHOD onPressed
   METHOD onReleased
   METHOD onSelected

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QAreaSeries(QObject *parent = Q_NULLPTR)
$internalConstructor=|new1|QObject *=Q_NULLPTR

$prototype=explicit QAreaSeries(QLineSeries *upperSeries, QLineSeries *lowerSeries = Q_NULLPTR)
$internalConstructor=|new2|QLineSeries *,QLineSeries *=Q_NULLPTR

//[1]explicit QAreaSeries(QObject *parent = Q_NULLPTR)
//[2]explicit QAreaSeries(QLineSeries *upperSeries, QLineSeries *lowerSeries = Q_NULLPTR)

HB_FUNC_STATIC( QAREASERIES_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QAreaSeries_new1();
  }
  else if( ISBETWEEN(1,2) && ISQLINESERIES(1) && (ISQLINESERIES(2)||ISNIL(2)) )
  {
    QAreaSeries_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QAreaSeries()
$deleteMethod

%%
%% Q_PROPERTY(QLineSeries *upperSeries READ upperSeries)
%%

$prototype=QLineSeries *upperSeries() const
$method=|QLineSeries *|upperSeries|

%%
%% Q_PROPERTY(QLineSeries *lowerSeries READ lowerSeries)
%%

$prototype=QLineSeries *lowerSeries() const
$method=|QLineSeries *|lowerSeries|

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
%% Q_PROPERTY(QString pointLabelsFormat READ pointLabelsFormat WRITE setPointLabelsFormat NOTIFY pointLabelsFormatChanged)
%%

$prototype=QString pointLabelsFormat() const
$method=|QString|pointLabelsFormat|

$prototype=void setPointLabelsFormat(const QString &format)
$method=|void|setPointLabelsFormat|const QString &

%%
%% Q_PROPERTY(bool pointLabelsVisible READ pointLabelsVisible WRITE setPointLabelsVisible NOTIFY pointLabelsVisibilityChanged)
%%

$prototype=bool pointLabelsVisible() const
$method=|bool|pointLabelsVisible|

$prototype=void setPointLabelsVisible(bool visible = true)
$method=|void|setPointLabelsVisible|bool=true

%%
%% Q_PROPERTY(QFont pointLabelsFont READ pointLabelsFont WRITE setPointLabelsFont NOTIFY pointLabelsFontChanged)
%%

$prototype=QFont pointLabelsFont() const
$method=|QFont|pointLabelsFont|

$prototype=void setPointLabelsFont(const QFont &font)
$method=|void|setPointLabelsFont|const QFont &

%%
%% Q_PROPERTY(QColor pointLabelsColor READ pointLabelsColor WRITE setPointLabelsColor NOTIFY pointLabelsColorChanged)
%%

$prototype=QColor pointLabelsColor() const
$method=|QColor|pointLabelsColor|

$prototype=void setPointLabelsColor(const QColor &color)
$method=|void|setPointLabelsColor|const QColor &

%%
%% Q_PROPERTY(bool pointLabelsClipping READ pointLabelsClipping WRITE setPointLabelsClipping NOTIFY pointLabelsClippingChanged)
%%

$prototype=bool pointLabelsClipping() const
$method=|bool|pointLabelsClipping|

$prototype=void setPointLabelsClipping(bool enabled = true)
$method=|void|setPointLabelsClipping|bool=true

%%
%%
%%

$prototype=QAbstractSeries::SeriesType type() const
$method=|QAbstractSeries::SeriesType|type|

$prototype=void setUpperSeries(QLineSeries *series)
$method=|void|setUpperSeries|QLineSeries *

$prototype=void setLowerSeries(QLineSeries *series)
$method=|void|setLowerSeries|QLineSeries *

$prototype=void setPen(const QPen &pen)
$method=|void|setPen|const QPen &

$prototype=QPen pen() const
$method=|QPen|pen|

$prototype=void setBrush(const QBrush &brush)
$method=|void|setBrush|const QBrush &

$prototype=QBrush brush() const
$method=|QBrush|brush|

$prototype=void setPointsVisible(bool visible = true)
$method=|void|setPointsVisible|bool=true

$prototype=bool pointsVisible() const
$method=|bool|pointsVisible|

#pragma ENDDUMP
