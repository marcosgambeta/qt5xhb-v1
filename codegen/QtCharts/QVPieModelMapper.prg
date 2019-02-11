%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCharts

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QPieModelMapper

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,7,0

#include <QtCharts/QPieSeries>
#include <QtCore/QAbstractItemModel>

using namespace QtCharts;

$prototype=explicit QVPieModelMapper(QObject *parent = Q_NULLPTR)
$constructor=5,7,0|new|QObject *=Q_NULLPTR

%% $deleteMethod

%%
%% Q_PROPERTY(QPieSeries *series READ series WRITE setSeries NOTIFY seriesReplaced)
%%

$prototype=QPieSeries *series() const
$method=5,7,0|QPieSeries *|series|

$prototype=void setSeries(QPieSeries *series)
$method=5,7,0|void|setSeries|QPieSeries *

%%
%% Q_PROPERTY(QAbstractItemModel *model READ model WRITE setModel NOTIFY modelReplaced)
%%

$prototype=QAbstractItemModel *model() const
$method=5,7,0|QAbstractItemModel *|model|

$prototype=void setModel(QAbstractItemModel *model)
$method=5,7,0|void|setModel|QAbstractItemModel *

%%
%% Q_PROPERTY(int valuesColumn READ valuesColumn WRITE setValuesColumn NOTIFY valuesColumnChanged)
%%

$prototype=int valuesColumn() const
$method=5,7,0|int|valuesColumn|

$prototype=void setValuesColumn(int valuesColumn)
$method=5,7,0|void|setValuesColumn|int

%%
%% Q_PROPERTY(int labelsColumn READ labelsColumn WRITE setLabelsColumn NOTIFY labelsColumnChanged)
%%

$prototype=int labelsColumn() const
$method=5,7,0|int|labelsColumn|

$prototype=void setLabelsColumn(int labelsColumn)
$method=5,7,0|void|setLabelsColumn|int

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
$signal=5,7,0|firstRowChanged()
$signal=5,7,0|labelsColumnChanged()
$signal=5,7,0|modelReplaced()
$signal=5,7,0|rowCountChanged()
$signal=5,7,0|seriesReplaced()
$signal=5,7,0|valuesColumnChanged()
$endSignals

#pragma ENDDUMP
