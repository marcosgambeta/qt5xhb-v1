%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QXYSeries INHERIT QAbstractSeries

%%   METHOD new
   METHOD delete

   METHOD append
   METHOD at
   METHOD brush
   METHOD clear
   METHOD color
   METHOD count
   METHOD insert
   METHOD pen
   METHOD pointLabelsClipping
   METHOD pointLabelsColor
   METHOD pointLabelsFont
   METHOD pointLabelsFormat
   METHOD pointLabelsVisible
   METHOD points
   METHOD pointsVector
   METHOD pointsVisible
   METHOD remove
   METHOD removePoints
   METHOD replace
   METHOD setBrush
   METHOD setColor
   METHOD setPen
   METHOD setPointLabelsClipping
   METHOD setPointLabelsColor
   METHOD setPointLabelsFont
   METHOD setPointLabelsFormat
   METHOD setPointLabelsVisible
   METHOD setPointsVisible

   METHOD onClicked
   METHOD onColorChanged
   METHOD onDoubleClicked
   METHOD onHovered
   METHOD onPenChanged
   METHOD onPointAdded
   METHOD onPointLabelsClippingChanged
   METHOD onPointLabelsColorChanged
   METHOD onPointLabelsFontChanged
   METHOD onPointLabelsFormatChanged
   METHOD onPointLabelsVisibilityChanged
   METHOD onPointRemoved
   METHOD onPointReplaced
   METHOD onPointsRemoved
   METHOD onPointsReplaced
   METHOD onPressed
   METHOD onReleased

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

using namespace QtCharts;

$prototype=explicit QXYSeries(QXYSeriesPrivate &d, QObject *parent = Q_NULLPTR) (protected)

$prototype=~QXYSeries()
$deleteMethod

%%
%% Q_PROPERTY(bool pointsVisible READ pointsVisible WRITE setPointsVisible)
%%

$prototype=bool pointsVisible() const
$method=|bool|pointsVisible|

$prototype=void setPointsVisible(bool visible = true)
$method=|void|setPointsVisible|bool=true

%%
%% Q_PROPERTY(QColor color READ color WRITE setColor NOTIFY colorChanged)
%%

$prototype=virtual QColor color() const
$virtualMethod=|QColor|color|

$prototype=virtual void setColor(const QColor &color)
$virtualMethod=|void|setColor|const QColor &

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

$prototype=void append(qreal x, qreal y)
$internalMethod=|void|append,append1|qreal,qreal

$prototype=void append(const QPointF &point)
$internalMethod=|void|append,append2|const QPointF &

$prototype=void append(const QList<QPointF> &points)
$internalMethod=|void|append,append3|const QList<QPointF> &

//[1]void append(qreal x, qreal y)
//[2]void append(const QPointF &point)
//[3]void append(const QList<QPointF> &points)

HB_FUNC_STATIC( QXYSERIES_APPEND )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QXYSeries_append1();
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QXYSeries_append2();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QXYSeries_append3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void replace(qreal oldX, qreal oldY, qreal newX, qreal newY)
$internalMethod=|void|replace,replace1|qreal,qreal,qreal,qreal

$prototype=void replace(const QPointF &oldPoint, const QPointF &newPoint)
$internalMethod=|void|replace,replace2|const QPointF &,const QPointF &

$prototype=void replace(int index, qreal newX, qreal newY)
$internalMethod=|void|replace,replace3|int,qreal,qreal

$prototype=void replace(int index, const QPointF &newPoint)
$internalMethod=|void|replace,replace4|int,const QPointF &

$prototype=void replace(QList<QPointF> points)
$internalMethod=|void|replace,replace5|QList<QPointF>

$prototype=void replace(QVector<QPointF> points)
$internalMethod=|void|replace,replace6|QVector<QPointF>

//[1]void replace(qreal oldX, qreal oldY, qreal newX, qreal newY)
//[2]void replace(const QPointF &oldPoint, const QPointF &newPoint)
//[3]void replace(int index, qreal newX, qreal newY)
//[4]void replace(int index, const QPointF &newPoint)
//[5]void replace(QList<QPointF> points)
//[6]void replace(QVector<QPointF> points)

%% TODO: conflict between [5] and [6]

HB_FUNC_STATIC( QXYSERIES_REPLACE )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QXYSeries_replace1();
  }
  else if( ISNUMPAR(2) && ISQPOINTF(1) && ISQPOINTF(2) )
  {
    QXYSeries_replace2();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QXYSeries_replace3();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQPOINTF(2) )
  {
    QXYSeries_replace4();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QXYSeries_replace5();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QXYSeries_replace6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void remove(qreal x, qreal y)
$internalMethod=|void|remove,remove1|qreal,qreal

$prototype=void remove(const QPointF &point)
$internalMethod=|void|remove,remove2|const QPointF &

$prototype=void remove(int index)
$internalMethod=|void|remove,remove3|int

//[1]void remove(qreal x, qreal y)
//[2]void remove(const QPointF &point)
//[3]void remove(int index)

HB_FUNC_STATIC( QXYSERIES_REMOVE )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QXYSeries_remove1();
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QXYSeries_remove2();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QXYSeries_remove3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void removePoints(int index, int count)
$method=|void|removePoints|int,int

$prototype=void insert(int index, const QPointF &point)
$method=|void|insert|int,const QPointF &

$prototype=void clear()
$method=|void|clear|

$prototype=int count() const
$method=|int|count|

$prototype=QList<QPointF> points() const
$method=|QList<QPointF>|points|

$prototype=QVector<QPointF> pointsVector() const
$method=|QVector<QPointF>|pointsVector|

$prototype=const QPointF &at(int index) const
$method=|const QPointF &|at|int

$prototype=virtual void setPen(const QPen &pen)
$virtualMethod=|void|setPen|const QPen &

$prototype=QPen pen() const
$method=|QPen|pen|

$prototype=virtual void setBrush(const QBrush &brush)
$virtualMethod=|void|setBrush|const QBrush &

$prototype=QBrush brush() const
$method=|QBrush|brush|

#pragma ENDDUMP
