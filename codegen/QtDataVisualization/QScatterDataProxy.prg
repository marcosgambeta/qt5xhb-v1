%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDataVisualization

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractDataProxy

$addMethods

$addSignals

$endClass

$destructor

%% TODO: implementar
%% namespace QtDataVisualization {
%% // typedef introduced this way because QDoc doesn't understand namespace macros
%% typedef QVector<QScatterDataItem> QScatterDataArray;
%% }

#pragma BEGINDUMP

$includes

#include <QtDataVisualization/QScatter3DSeries>

using namespace QtDataVisualization;

$prototype=explicit QScatterDataProxy(QObject *parent = Q_NULLPTR)
$constructor=|new|QObject *=Q_NULLPTR

$prototype=explicit QScatterDataProxy(QScatterDataProxyPrivate *d, QObject *parent = Q_NULLPTR) [protected]

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
%% TODO: implementar

$prototype=const QScatterDataItem *itemAt(int index) const
$method=|const QScatterDataItem *|itemAt|int

$prototype=void resetArray(QScatterDataArray *newArray)
%% TODO: implementar

$prototype=void setItem(int index, const QScatterDataItem &item)
$method=|void|setItem|int,const QScatterDataItem &

$prototype=void setItems(int index, const QScatterDataArray &items)
%% TODO: implementar

$prototype=int addItem(const QScatterDataItem &item)
$method=|int|addItem|const QScatterDataItem &

$prototype=int addItems(const QScatterDataArray &items)
%% TODO: implementar

$prototype=void insertItem(int index, const QScatterDataItem &item)
$method=|void|insertItem|int,const QScatterDataItem &

$prototype=void insertItems(int index, const QScatterDataArray &items)
%% TODO: implementar

$prototype=void removeItems(int index, int removeCount)
$method=|void|removeItems|int,int

$beginSignals
$signal=|arrayReset();
$signal=|itemCountChanged(int)
$signal=|itemsAdded(int,int)
$signal=|itemsChanged(int,int)
$signal=|itemsInserted(int,int)
$signal=|itemsRemoved(int,int)
$signal=|seriesChanged(QScatter3DSeries*)
$endSignals

#pragma ENDDUMP
