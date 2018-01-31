%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QVBoxPlotModelMapper INHERIT QBoxPlotModelMapper

   METHOD new
   METHOD delete

   METHOD firstBoxSetColumn
   METHOD firstRow
   METHOD lastBoxSetColumn
   METHOD model
   METHOD rowCount
   METHOD series
   METHOD setFirstBoxSetColumn
   METHOD setFirstRow
   METHOD setLastBoxSetColumn
   METHOD setModel
   METHOD setRowCount
   METHOD setSeries

   METHOD onFirstBoxSetColumnChanged
   METHOD onFirstRowChanged
   METHOD onLastBoxSetColumnChanged
   METHOD onModelReplaced
   METHOD onRowCountChanged
   METHOD onSeriesReplaced

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QBoxPlotSeries>
#include <QAbstractItemModel>

using namespace QtCharts;

$prototype=explicit QVBoxPlotModelMapper(QObject *parent = Q_NULLPTR)
$constructor=|new|QObject *=Q_NULLPTR

%% $deleteMethod

%%
%% Q_PROPERTY(QBoxPlotSeries *series READ series WRITE setSeries NOTIFY seriesReplaced)
%%

$prototype=QBoxPlotSeries *series() const
$method=|QBoxPlotSeries *|series|

$prototype=void setSeries(QBoxPlotSeries *series)
$method=|void|setSeries|QBoxPlotSeries *

%%
%% Q_PROPERTY(QAbstractItemModel *model READ model WRITE setModel NOTIFY modelReplaced)
%%

$prototype=QAbstractItemModel *model() const
$method=|QAbstractItemModel *|model|

$prototype=void setModel(QAbstractItemModel *model)
$method=|void|setModel|QAbstractItemModel *

%%
%% Q_PROPERTY(int firstBoxSetColumn READ firstBoxSetColumn WRITE setFirstBoxSetColumn NOTIFY firstBoxSetColumnChanged)
%%

$prototype=int firstBoxSetColumn() const
$method=|int|firstBoxSetColumn|

$prototype=void setFirstBoxSetColumn(int firstBoxSetColumn)
$method=|void|setFirstBoxSetColumn|int

%%
%% Q_PROPERTY(int lastBoxSetColumn READ lastBoxSetColumn WRITE setLastBoxSetColumn NOTIFY lastBoxSetColumnChanged)
%%

$prototype=int lastBoxSetColumn() const
$method=|int|lastBoxSetColumn|

$prototype=void setLastBoxSetColumn(int lastBoxSetColumn)
$method=|void|setLastBoxSetColumn|int

%%
%% Q_PROPERTY(int firstRow READ firstRow WRITE setFirstRow NOTIFY firstRowChanged)
%%

$prototype=int firstRow() const
$method=|int|firstRow|

$prototype=void setFirstRow(int firstRow)
$method=|void|setFirstRow|int

%%
%% Q_PROPERTY(int rowCount READ rowCount WRITE setRowCount NOTIFY rowCountChanged)
%%

$prototype=int rowCount() const
$method=|int|rowCount|

$prototype=void setRowCount(int rowCount)
$method=|void|setRowCount|int

%%
%%
%%

#pragma ENDDUMP
