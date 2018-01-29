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

$includes

$prototype=explicit QCandlestickSeries(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$prototype=~QCandlestickSeries()
$deleteMethod

%%
%% Q_PROPERTY(int count READ count NOTIFY countChanged)
%%

$prototype=int count() const
$method=|int|count|

%%
%% Q_PROPERTY(qreal maximumColumnWidth READ maximumColumnWidth WRITE setMaximumColumnWidth NOTIFY maximumColumnWidthChanged)
%%

$prototype=qreal maximumColumnWidth() const
$method=|qreal|maximumColumnWidth|

$prototype=void setMaximumColumnWidth(qreal maximumColumnWidth)
$method=|void|setMaximumColumnWidth|qreal

%%
%% Q_PROPERTY(qreal minimumColumnWidth READ minimumColumnWidth WRITE setMinimumColumnWidth NOTIFY minimumColumnWidthChanged)
%%

$prototype=qreal minimumColumnWidth() const
$method=|qreal|minimumColumnWidth|

$prototype=void setMinimumColumnWidth(qreal minimumColumnWidth)
$method=|void|setMinimumColumnWidth|qreal

%%
%% Q_PROPERTY(qreal bodyWidth READ bodyWidth WRITE setBodyWidth NOTIFY bodyWidthChanged)
%%

$prototype=qreal bodyWidth() const
$method=|qreal|bodyWidth|

$prototype=void setBodyWidth(qreal bodyWidth)
$method=|void|setBodyWidth|qreal

%%
%% Q_PROPERTY(bool bodyOutlineVisible READ bodyOutlineVisible WRITE setBodyOutlineVisible NOTIFY bodyOutlineVisibilityChanged)
%%

$prototype=bool bodyOutlineVisible() const
$method=|bool|bodyOutlineVisible|

$prototype=void setBodyOutlineVisible(bool bodyOutlineVisible)
$method=|void|setBodyOutlineVisible|bool

%%
%% Q_PROPERTY(qreal capsWidth READ capsWidth WRITE setCapsWidth NOTIFY capsWidthChanged)
%%

$prototype=qreal capsWidth() const
$method=|qreal|capsWidth|

$prototype=void setCapsWidth(qreal capsWidth)
$method=|void|setCapsWidth|qreal

%%
%% Q_PROPERTY(bool capsVisible READ capsVisible WRITE setCapsVisible NOTIFY capsVisibilityChanged)
%%

$prototype=bool capsVisible() const
$method=|bool|capsVisible|

$prototype=void setCapsVisible(bool capsVisible)
$method=|void|setCapsVisible|bool

%%
%% Q_PROPERTY(QColor increasingColor READ increasingColor WRITE setIncreasingColor NOTIFY increasingColorChanged)
%%

$prototype=QColor increasingColor() const
$method=|QColor|increasingColor|

$prototype=void setIncreasingColor(const QColor &increasingColor)
$method=|void|setIncreasingColor|const QColor &

%%
%% Q_PROPERTY(QColor decreasingColor READ decreasingColor WRITE setDecreasingColor NOTIFY decreasingColorChanged)
%%

$prototype=QColor decreasingColor() const
$method=|QColor|decreasingColor|

$prototype=void setDecreasingColor(const QColor &decreasingColor)
$method=|void|setDecreasingColor|const QColor &

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

$prototype=bool append(QCandlestickSet *set)
$internalMethod=|bool|append,append1|const QList<QCandlestickSet *> &

$prototype=bool append(const QList<QCandlestickSet *> &sets)
$internalMethod=|bool|append,append2|const QList<QCandlestickSet *> &

//[1]bool append(QCandlestickSet *set)
//[2]bool append(const QList<QCandlestickSet *> &sets)

HB_FUNC_STATIC( QCANDLESTICKSERIES_APPEND )
{
}

$prototype=bool remove(QCandlestickSet *set)
$method=|bool|remove,remove1|QCandlestickSet *

$prototype=bool remove(const QList<QCandlestickSet *> &sets)
$method=|bool|remove,remove2|const QList<QCandlestickSet *> &

//[1]bool remove(QCandlestickSet *set)
//[2]bool remove(const QList<QCandlestickSet *> &sets)

HB_FUNC_STATIC( QCANDLESTICKSERIES_REMOVE )
{
}

$prototype=bool insert(int index, QCandlestickSet *set)
$method=|bool|insert|int,QCandlestickSet *

$prototype=bool take(QCandlestickSet *set)
$method=|bool|take|QCandlestickSet *

$prototype=void clear()
$method=|void|clear|

$prototype=QList<QCandlestickSet *> sets() const
$method=|QList<QCandlestickSet *>|sets|

$prototype=QAbstractSeries::SeriesType type() const
$method=|QAbstractSeries::SeriesType|type|

#pragma ENDDUMP
