%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QScatterDataProxy INHERIT QAbstractDataProxy

   METHOD new
   METHOD delete

   METHOD addItem
   METHOD addItems
   METHOD array
   METHOD insertItem
   METHOD insertItems
   METHOD itemAt
   METHOD itemCount
   METHOD removeItems
   METHOD resetArray
   METHOD series
   METHOD setItem
   METHOD setItems

   METHOD onArrayReset
   METHOD onItemCountChanged
   METHOD onItemsAdded
   METHOD onItemsChanged
   METHOD onItemsInserted
   METHOD onItemsRemoved
   METHOD onSeriesChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

%% TODO: implementar
%% namespace QtDataVisualization {
%% // typedef introduced this way because QDoc doesn't understand namespace macros
%% typedef QVector<QScatterDataItem> QScatterDataArray;
%% }

#pragma BEGINDUMP

$includes

$prototype=explicit QScatterDataProxy(QObject *parent = Q_NULLPTR)
$constructor=|new|QObject *=Q_NULLPTR

$prototype=explicit QScatterDataProxy(QScatterDataProxyPrivate *d, QObject *parent = Q_NULLPTR) (protected)

$prototype=virtual ~QScatterDataProxy()
$deleteMethod

%%
%% Q_PROPERTY(int itemCount READ itemCount NOTIFY itemCountChanged)
%%

$prototype=int itemCount() const
$method=|int|itemCount|

%%
%% Q_PROPERTY(QScatter3DSeries *series READ series NOTIFY seriesChanged)
%%

$prototype=QScatter3DSeries *series() const
$method=|QScatter3DSeries *|series|

%%
%%
%%

$prototype=const QScatterDataArray *array() const

$prototype=const QScatterDataItem *itemAt(int index) const
$method=|const QScatterDataItem *|itemAt|int

$prototype=void resetArray(QScatterDataArray *newArray)

$prototype=void setItem(int index, const QScatterDataItem &item)
$method=|void|setItem|int,const QScatterDataItem &

$prototype=void setItems(int index, const QScatterDataArray &items)

$prototype=int addItem(const QScatterDataItem &item)
$method=|int|addItem|const QScatterDataItem &

$prototype=int addItems(const QScatterDataArray &items)

$prototype=void insertItem(int index, const QScatterDataItem &item)
$method=|void|insertItem|int,const QScatterDataItem &

$prototype=void insertItems(int index, const QScatterDataArray &items)

$prototype=void removeItems(int index, int removeCount)
$method=|void|removeItems|int,int

#pragma ENDDUMP
