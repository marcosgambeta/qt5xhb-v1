%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QBoxPlotModelMapper

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,7,0

#include <QBoxPlotSeries>
#include <QAbstractItemModel>

using namespace QtCharts;

$prototype=explicit QVBoxPlotModelMapper(QObject *parent = Q_NULLPTR)
$constructor=5,7,0|new|QObject *=Q_NULLPTR

%% $deleteMethod

%%
%% Q_PROPERTY(QBoxPlotSeries *series READ series WRITE setSeries NOTIFY seriesReplaced)
%%

$prototype=QBoxPlotSeries *series() const
$method=5,7,0|QBoxPlotSeries *|series|

$prototype=void setSeries(QBoxPlotSeries *series)
$method=5,7,0|void|setSeries|QBoxPlotSeries *

%%
%% Q_PROPERTY(QAbstractItemModel *model READ model WRITE setModel NOTIFY modelReplaced)
%%

$prototype=QAbstractItemModel *model() const
$method=5,7,0|QAbstractItemModel *|model|

$prototype=void setModel(QAbstractItemModel *model)
$method=5,7,0|void|setModel|QAbstractItemModel *

%%
%% Q_PROPERTY(int firstBoxSetColumn READ firstBoxSetColumn WRITE setFirstBoxSetColumn NOTIFY firstBoxSetColumnChanged)
%%

$prototype=int firstBoxSetColumn() const
$method=5,7,0|int|firstBoxSetColumn|

$prototype=void setFirstBoxSetColumn(int firstBoxSetColumn)
$method=5,7,0|void|setFirstBoxSetColumn|int

%%
%% Q_PROPERTY(int lastBoxSetColumn READ lastBoxSetColumn WRITE setLastBoxSetColumn NOTIFY lastBoxSetColumnChanged)
%%

$prototype=int lastBoxSetColumn() const
$method=5,7,0|int|lastBoxSetColumn|

$prototype=void setLastBoxSetColumn(int lastBoxSetColumn)
$method=5,7,0|void|setLastBoxSetColumn|int

%%
%% Q_PROPERTY(int firstRow READ firstRow WRITE setFirstRow NOTIFY firstRowChanged)
%%

$prototype=int firstRow() const
$method=5,7,0|int|firstRow|

$prototype=void setFirstRow(int firstRow)
$method=5,7,0|void|setFirstRow|int

%%
%% Q_PROPERTY(int rowCount READ rowCount WRITE setRowCount NOTIFY rowCountChanged)
%%

$prototype=int rowCount() const
$method=5,7,0|int|rowCount|

$prototype=void setRowCount(int rowCount)
$method=5,7,0|void|setRowCount|int

%%
%%
%%

$beginSignals
$signal=5,7,0|firstBoxSetColumnChanged()
$signal=5,7,0|firstRowChanged()
$signal=5,7,0|lastBoxSetColumnChanged()
$signal=5,7,0|modelReplaced()
$signal=5,7,0|rowCountChanged()
$signal=5,7,0|seriesReplaced()
$endSignals

#pragma ENDDUMP
