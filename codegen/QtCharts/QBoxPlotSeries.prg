%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractSeries

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,7,0

using namespace QtCharts;

$prototype=explicit QBoxPlotSeries(QObject *parent = Q_NULLPTR)
$constructor=5,7,0|new|QObject *=Q_NULLPTR

$prototype=~QBoxPlotSeries()
$deleteMethod=5,7,0

%%
%% Q_PROPERTY(int count READ count NOTIFY countChanged REVISION 1)
%%

$prototype=int count() const
$method=5,7,0|int|count|

%%
%% Q_PROPERTY(bool boxOutlineVisible READ boxOutlineVisible WRITE setBoxOutlineVisible NOTIFY boxOutlineVisibilityChanged)
%%

$prototype=bool boxOutlineVisible()
$method=5,7,0|bool|boxOutlineVisible|

$prototype=void setBoxOutlineVisible(bool visible)
$method=5,7,0|void|setBoxOutlineVisible|bool

%%
%% Q_PROPERTY(qreal boxWidth READ boxWidth WRITE setBoxWidth NOTIFY boxWidthChanged)
%%

$prototype=qreal boxWidth()
$method=5,7,0|qreal|boxWidth|

$prototype=void setBoxWidth(qreal width)
$method=5,7,0|void|setBoxWidth|qreal

%%
%% Q_PROPERTY(QBrush brush READ brush WRITE setBrush NOTIFY brushChanged)
%%

$prototype=QBrush brush() const
$method=5,7,0|QBrush|brush|

$prototype=void setBrush(const QBrush &brush)
$method=5,7,0|void|setBrush|const QBrush &

%%
%% Q_PROPERTY(QPen pen READ pen WRITE setPen NOTIFY penChanged)
%%

$prototype=QPen pen() const
$method=5,7,0|QPen|pen|

$prototype=void setPen(const QPen &pen)
$method=5,7,0|void|setPen|const QPen &

%%
%%
%%

$prototype=bool append(QBoxSet *box)
$internalMethod=5,7,0|bool|append,append1|QBoxSet *

$prototype=bool append(QList<QBoxSet *> boxes)
$internalMethod=5,7,0|bool|append,append2|QList<QBoxSet *>

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
$addMethod=append

$prototype=bool remove(QBoxSet *box)
$method=5,7,0|bool|remove|QBoxSet *

$prototype=bool take(QBoxSet *box)
$method=5,7,0|bool|take|QBoxSet *

$prototype=bool insert(int index, QBoxSet *box)
$method=5,7,0|bool|insert|int,QBoxSet *

$prototype=QList<QBoxSet *> boxSets() const
$method=5,7,0|QList<QBoxSet *>|boxSets|

$prototype=void clear()
$method=5,7,0|void|clear|

$prototype=QAbstractSeries::SeriesType type() const
$method=5,7,0|QAbstractSeries::SeriesType|type|

$beginSignals
$signal=5,7,0|boxOutlineVisibilityChanged()
$signal=5,7,0|boxsetsAdded(QList<QBoxSet*>)
$signal=5,7,0|boxsetsRemoved(QList<QBoxSet*>)
$signal=5,7,0|boxWidthChanged()
$signal=5,7,0|brushChanged()
$signal=5,7,0|clicked(QBoxSet*)
$signal=5,7,0|countChanged()
$signal=5,7,0|doubleClicked(QBoxSet*)
$signal=5,7,0|hovered(bool,QBoxSet*)
$signal=5,7,0|penChanged()
$signal=5,7,0|pressed(QBoxSet*)
$signal=5,7,0|released(QBoxSet*)
$endSignals

#pragma ENDDUMP
