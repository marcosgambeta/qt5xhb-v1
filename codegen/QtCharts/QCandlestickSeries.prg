%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QCandlestickSeries INHERIT QAbstractSeries

   METHOD new
   METHOD delete

   METHOD append
   METHOD bodyOutlineVisible
   METHOD bodyWidth
   METHOD brush
   METHOD capsVisible
   METHOD capsWidth
   METHOD clear
   METHOD count
   METHOD decreasingColor
   METHOD increasingColor
   METHOD insert
   METHOD maximumColumnWidth
   METHOD minimumColumnWidth
   METHOD pen
   METHOD remove
   METHOD setBodyOutlineVisible
   METHOD setBodyWidth
   METHOD setBrush
   METHOD setCapsVisible
   METHOD setCapsWidth
   METHOD setDecreasingColor
   METHOD setIncreasingColor
   METHOD setMaximumColumnWidth
   METHOD setMinimumColumnWidth
   METHOD setPen
   METHOD sets
   METHOD take
   METHOD type

   METHOD onBodyOutlineVisibilityChanged
   METHOD onBodyWidthChanged
   METHOD onBrushChanged
   METHOD onCandlestickSetsAdded
   METHOD onCandlestickSetsRemoved
   METHOD onCapsVisibilityChanged
   METHOD onCapsWidthChanged
   METHOD onClicked
   METHOD onCountChanged
   METHOD onDecreasingColorChanged
   METHOD onDoubleClicked
   METHOD onHovered
   METHOD onIncreasingColorChanged
   METHOD onMaximumColumnWidthChanged
   METHOD onMinimumColumnWidthChanged
   METHOD onPenChanged
   METHOD onPressed
   METHOD onReleased

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,8,0

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
using namespace QtCharts;
#endif

$prototype=explicit QCandlestickSeries(QObject *parent = nullptr)
$constructor=5,8,0|new|QObject *=nullptr

$prototype=~QCandlestickSeries()
$deleteMethod=5,8,0

%%
%% Q_PROPERTY(int count READ count NOTIFY countChanged)
%%

$prototype=int count() const
$method=5,8,0|int|count|

%%
%% Q_PROPERTY(qreal maximumColumnWidth READ maximumColumnWidth WRITE setMaximumColumnWidth NOTIFY maximumColumnWidthChanged)
%%

$prototype=qreal maximumColumnWidth() const
$method=5,8,0|qreal|maximumColumnWidth|

$prototype=void setMaximumColumnWidth(qreal maximumColumnWidth)
$method=5,8,0|void|setMaximumColumnWidth|qreal

%%
%% Q_PROPERTY(qreal minimumColumnWidth READ minimumColumnWidth WRITE setMinimumColumnWidth NOTIFY minimumColumnWidthChanged)
%%

$prototype=qreal minimumColumnWidth() const
$method=5,8,0|qreal|minimumColumnWidth|

$prototype=void setMinimumColumnWidth(qreal minimumColumnWidth)
$method=5,8,0|void|setMinimumColumnWidth|qreal

%%
%% Q_PROPERTY(qreal bodyWidth READ bodyWidth WRITE setBodyWidth NOTIFY bodyWidthChanged)
%%

$prototype=qreal bodyWidth() const
$method=5,8,0|qreal|bodyWidth|

$prototype=void setBodyWidth(qreal bodyWidth)
$method=5,8,0|void|setBodyWidth|qreal

%%
%% Q_PROPERTY(bool bodyOutlineVisible READ bodyOutlineVisible WRITE setBodyOutlineVisible NOTIFY bodyOutlineVisibilityChanged)
%%

$prototype=bool bodyOutlineVisible() const
$method=5,8,0|bool|bodyOutlineVisible|

$prototype=void setBodyOutlineVisible(bool bodyOutlineVisible)
$method=5,8,0|void|setBodyOutlineVisible|bool

%%
%% Q_PROPERTY(qreal capsWidth READ capsWidth WRITE setCapsWidth NOTIFY capsWidthChanged)
%%

$prototype=qreal capsWidth() const
$method=5,8,0|qreal|capsWidth|

$prototype=void setCapsWidth(qreal capsWidth)
$method=5,8,0|void|setCapsWidth|qreal

%%
%% Q_PROPERTY(bool capsVisible READ capsVisible WRITE setCapsVisible NOTIFY capsVisibilityChanged)
%%

$prototype=bool capsVisible() const
$method=5,8,0|bool|capsVisible|

$prototype=void setCapsVisible(bool capsVisible)
$method=5,8,0|void|setCapsVisible|bool

%%
%% Q_PROPERTY(QColor increasingColor READ increasingColor WRITE setIncreasingColor NOTIFY increasingColorChanged)
%%

$prototype=QColor increasingColor() const
$method=5,8,0|QColor|increasingColor|

$prototype=void setIncreasingColor(const QColor &increasingColor)
$method=5,8,0|void|setIncreasingColor|const QColor &

%%
%% Q_PROPERTY(QColor decreasingColor READ decreasingColor WRITE setDecreasingColor NOTIFY decreasingColorChanged)
%%

$prototype=QColor decreasingColor() const
$method=5,8,0|QColor|decreasingColor|

$prototype=void setDecreasingColor(const QColor &decreasingColor)
$method=5,8,0|void|setDecreasingColor|const QColor &

%%
%% Q_PROPERTY(QBrush brush READ brush WRITE setBrush NOTIFY brushChanged)
%%

$prototype=QBrush brush() const
$method=5,8,0|QBrush|brush|

$prototype=void setBrush(const QBrush &brush)
$method=5,8,0|void|setBrush|const QBrush &

%%
%% Q_PROPERTY(QPen pen READ pen WRITE setPen NOTIFY penChanged)
%%

$prototype=QPen pen() const
$method=5,8,0|QPen|pen|

$prototype=void setPen(const QPen &pen)
$method=5,8,0|void|setPen|const QPen &

%%
%%
%%

$prototype=bool append(QCandlestickSet *set)
$internalMethod=5,8,0|bool|append,append1|const QList<QCandlestickSet *> &

$prototype=bool append(const QList<QCandlestickSet *> &sets)
$internalMethod=5,8,0|bool|append,append2|const QList<QCandlestickSet *> &

//[1]bool append(QCandlestickSet *set)
//[2]bool append(const QList<QCandlestickSet *> &sets)

HB_FUNC_STATIC( QCANDLESTICKSERIES_APPEND )
{
  if( ISNUMPAR(1) && ISQCANDLESTICKSET(1) )
  {
    QCandlestickSeries_append1();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QCandlestickSeries_append2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=bool remove(QCandlestickSet *set)
$internalMethod=5,8,0|bool|remove,remove1|QCandlestickSet *

$prototype=bool remove(const QList<QCandlestickSet *> &sets)
$internalMethod=5,8,0|bool|remove,remove2|const QList<QCandlestickSet *> &

//[1]bool remove(QCandlestickSet *set)
//[2]bool remove(const QList<QCandlestickSet *> &sets)

HB_FUNC_STATIC( QCANDLESTICKSERIES_REMOVE )
{
  if( ISNUMPAR(1) && ISQCANDLESTICKSET(1) )
  {
    QCandlestickSeries_remove1();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QCandlestickSeries_remove2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=bool insert(int index, QCandlestickSet *set)
$method=5,8,0|bool|insert|int,QCandlestickSet *

$prototype=bool take(QCandlestickSet *set)
$method=5,8,0|bool|take|QCandlestickSet *

$prototype=void clear()
$method=5,8,0|void|clear|

$prototype=QList<QCandlestickSet *> sets() const
$method=5,8,0|QList<QCandlestickSet *>|sets|

$prototype=QAbstractSeries::SeriesType type() const
$method=5,8,0|QAbstractSeries::SeriesType|type|

$beginSignals
$signalMethod=5,8,0|bodyOutlineVisibilityChanged()
$signalMethod=5,8,0|bodyWidthChanged()
$signalMethod=5,8,0|brushChanged()
$signalMethod=5,8,0|candlestickSetsAdded(QList<QCandlestickSet*>)
$signalMethod=5,8,0|candlestickSetsRemoved(QList<QCandlestickSet*>)
$signalMethod=5,8,0|capsVisibilityChanged()
$signalMethod=5,8,0|capsWidthChanged()
$signalMethod=5,8,0|clicked(QCandlestickSet*)
$signalMethod=5,8,0|countChanged()
$signalMethod=5,8,0|decreasingColorChanged()
$signalMethod=5,8,0|doubleClicked(QCandlestickSet*)
$signalMethod=5,8,0|hovered(bool,QCandlestickSet*)
$signalMethod=5,8,0|increasingColorChanged()
$signalMethod=5,8,0|maximumColumnWidthChanged()
$signalMethod=5,8,0|minimumColumnWidthChanged()
$signalMethod=5,8,0|penChanged()
$signalMethod=5,8,0|pressed(QCandlestickSet*)
$signalMethod=5,8,0|released(QCandlestickSet*)
$endSignals

#pragma ENDDUMP
