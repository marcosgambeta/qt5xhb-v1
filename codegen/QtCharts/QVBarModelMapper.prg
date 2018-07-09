%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QBarModelMapper

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,7,0

#include <QAbstractBarSeries>
#include <QAbstractItemModel>

using namespace QtCharts;

$prototype=explicit QVBarModelMapper(QObject *parent = Q_NULLPTR)
$constructor=5,7,0|new|QObject *=Q_NULLPTR

%% $deleteMethod=5,7,0

%%
%% Q_PROPERTY(QAbstractBarSeries *series READ series WRITE setSeries NOTIFY seriesReplaced)
%%

$prototype=QAbstractBarSeries *series() const
$method=5,7,0|QAbstractBarSeries *|series|

$prototype=void setSeries(QAbstractBarSeries *series)
$method=5,7,0|void|setSeries|QAbstractBarSeries *

%%
%% Q_PROPERTY(QAbstractItemModel *model READ model WRITE setModel NOTIFY modelReplaced)
%%

$prototype=QAbstractItemModel *model() const
$method=5,7,0|QAbstractItemModel *|model|

$prototype=void setModel(QAbstractItemModel *model)
$method=5,7,0|void|setModel|QAbstractItemModel *

%%
%% Q_PROPERTY(int firstBarSetColumn READ firstBarSetColumn WRITE setFirstBarSetColumn NOTIFY firstBarSetColumnChanged)
%%

$prototype=int firstBarSetColumn() const
$method=5,7,0|int|firstBarSetColumn|

$prototype=void setFirstBarSetColumn(int firstBarSetColumn)
$method=5,7,0|void|setFirstBarSetColumn|int

%%
%% Q_PROPERTY(int lastBarSetColumn READ lastBarSetColumn WRITE setLastBarSetColumn NOTIFY lastBarSetColumnChanged)
%%

$prototype=int lastBarSetColumn() const
$method=5,7,0|int|lastBarSetColumn|

$prototype=void setLastBarSetColumn(int lastBarSetColumn)
$method=5,7,0|void|setLastBarSetColumn|int

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
$signal=5,7,0|firstBarSetColumnChanged()
$signal=5,7,0|firstRowChanged()
$signal=5,7,0|lastBarSetColumnChanged()
$signal=5,7,0|modelReplaced()
$signal=5,7,0|rowCountChanged()
$signal=5,7,0|seriesReplaced()
$endSignals

#pragma ENDDUMP
