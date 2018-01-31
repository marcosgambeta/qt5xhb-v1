%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QBoxPlotSeries INHERIT QAbstractSeries

   METHOD new
   METHOD delete

   METHOD append
   METHOD boxOutlineVisible
   METHOD boxSets
   METHOD boxWidth
   METHOD brush
   METHOD clear
   METHOD count
   METHOD insert
   METHOD pen
   METHOD remove
   METHOD setBoxOutlineVisible
   METHOD setBoxWidth
   METHOD setBrush
   METHOD setPen
   METHOD take
   METHOD type

   METHOD onBoxOutlineVisibilityChanged
   METHOD onBoxsetsAdded
   METHOD onBoxsetsRemoved
   METHOD onBoxWidthChanged
   METHOD onBrushChanged
   METHOD onClicked
   METHOD onCountChanged
   METHOD onDoubleClicked
   METHOD onHovered
   METHOD onPenChanged
   METHOD onPressed
   METHOD onReleased

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

using namespace QtCharts;

$prototype=explicit QBoxPlotSeries(QObject *parent = Q_NULLPTR)
$constructor=|new|QObject *=Q_NULLPTR

$prototype=~QBoxPlotSeries()
$deleteMethod

%%
%% Q_PROPERTY(int count READ count NOTIFY countChanged REVISION 1)
%%

$prototype=int count() const
$method=|int|count|

%%
%% Q_PROPERTY(bool boxOutlineVisible READ boxOutlineVisible WRITE setBoxOutlineVisible NOTIFY boxOutlineVisibilityChanged)
%%

$prototype=bool boxOutlineVisible()
$method=|bool|boxOutlineVisible|

$prototype=void setBoxOutlineVisible(bool visible)
$method=|void|setBoxOutlineVisible|bool

%%
%% Q_PROPERTY(qreal boxWidth READ boxWidth WRITE setBoxWidth NOTIFY boxWidthChanged)
%%

$prototype=qreal boxWidth()
$method=|qreal|boxWidth|

$prototype=void setBoxWidth(qreal width)
$method=|void|setBoxWidth|qreal

%%
%% Q_PROPERTY(QBrush brush READ brush WRITE setBrush NOTIFY brushChanged)
%%

$prototype=QBrush brush() const
$method=|QBrush|brush|

$prototype=void setBrush(const QBrush &brush)
$method=|void|setBrush|const QBrush &

%%
%% Q_PROPERTY(QPen pen READ pen WRITE setPen NOTIFY penChanged)
%%

$prototype=QPen pen() const
$method=|QPen|pen|

$prototype=void setPen(const QPen &pen)
$method=|void|setPen|const QPen &

%%
%%
%%

$prototype=bool append(QBoxSet *box)
$internalMethod=|bool|append,append1|QBoxSet *

$prototype=bool append(QList<QBoxSet *> boxes)
$internalMethod=|bool|append,append2|QList<QBoxSet *>

//[1]bool append(QBoxSet *box)
//[2]bool append(QList<QBoxSet *> boxes)

HB_FUNC_STATIC( QBOXPLOTSERIES_APPEND )
{
  if( ISNUMPAR(1) && ISQBOXSET(1) )
  {
    QBoxPlotSeries_append1();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QBoxPlotSeries_append2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=bool remove(QBoxSet *box)
$method=|bool|remove|QBoxSet *

$prototype=bool take(QBoxSet *box)
$method=|bool|take|QBoxSet *

$prototype=bool insert(int index, QBoxSet *box)
$method=|bool|insert|int,QBoxSet *

$prototype=QList<QBoxSet *> boxSets() const
$method=|QList<QBoxSet *>|boxSets|

$prototype=void clear()
$method=|void|clear|

$prototype=QAbstractSeries::SeriesType type() const
$method=|QAbstractSeries::SeriesType|type|

#pragma ENDDUMP
