%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCharts

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QBoxPlotModelMapper

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,8,0

#include <QtCharts/QBoxPlotSeries>
#include <QtCore/QAbstractItemModel>

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
using namespace QtCharts;
#endif

$prototype=explicit QHBoxPlotModelMapper(QObject *parent = nullptr)
$constructor=5,8,0|new|QObject *=nullptr

%% $deleteMethod=5,8,0

%%
%% Q_PROPERTY(QBoxPlotSeries *series READ series WRITE setSeries NOTIFY seriesReplaced)
%%

$prototype=QBoxPlotSeries *series() const
$method=5,8,0|QBoxPlotSeries *|series|

$prototype=void setSeries(QBoxPlotSeries *series)
$method=5,8,0|void|setSeries|QBoxPlotSeries *

%%
%% Q_PROPERTY(QAbstractItemModel *model READ model WRITE setModel NOTIFY modelReplaced)
%%

$prototype=QAbstractItemModel *model() const
$method=5,8,0|QAbstractItemModel *|model|

$prototype=void setModel(QAbstractItemModel *model)
$method=5,8,0|void|setModel|QAbstractItemModel *

%%
%% Q_PROPERTY(int firstBoxSetRow READ firstBoxSetRow WRITE setFirstBoxSetRow NOTIFY firstBoxSetRowChanged)
%%

$prototype=int firstBoxSetRow() const
$method=5,8,0|int|firstBoxSetRow|

$prototype=void setFirstBoxSetRow(int firstBoxSetRow)
$method=5,8,0|void|setFirstBoxSetRow|int

%%
%% Q_PROPERTY(int lastBoxSetRow READ lastBoxSetRow WRITE setLastBoxSetRow NOTIFY lastBoxSetRowChanged)
%%

$prototype=int lastBoxSetRow() const
$method=5,8,0|int|lastBoxSetRow|

$prototype=void setLastBoxSetRow(int lastBoxSetRow)
$method=5,8,0|void|setLastBoxSetRow|int

%%
%% Q_PROPERTY(int firstColumn READ firstColumn WRITE setFirstColumn NOTIFY firstColumnChanged)
%%

$prototype=int firstColumn() const
$method=5,8,0|int|firstColumn|

$prototype=void setFirstColumn(int firstColumn)
$method=5,8,0|void|setFirstColumn|int

%%
%% Q_PROPERTY(int columnCount READ columnCount WRITE setColumnCount NOTIFY columnCountChanged)
%%

$prototype=int columnCount() const
$method=5,8,0|int|columnCount|

$prototype=void setColumnCount(int rowCount)
$method=5,8,0|void|setColumnCount|int

%%
%%
%%

$beginSignals
$signal=5,8,0|columnCountChanged()
$signal=5,8,0|firstBoxSetRowChanged()
$signal=5,8,0|firstColumnChanged()
$signal=5,8,0|lastBoxSetRowChanged()
$signal=5,8,0|modelReplaced()
$signal=5,8,0|seriesReplaced()
$endSignals

#pragma ENDDUMP
