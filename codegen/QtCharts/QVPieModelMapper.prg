%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QVPieModelMapper INHERIT QPieModelMapper

   METHOD new
   METHOD delete

   METHOD firstRow
   METHOD labelsColumn
   METHOD model
   METHOD rowCount
   METHOD series
   METHOD setFirstRow
   METHOD setLabelsColumn
   METHOD setModel
   METHOD setRowCount
   METHOD setSeries
   METHOD setValuesColumn
   METHOD valuesColumn

   METHOD onFirstRowChanged
   METHOD onLabelsColumnChanged
   METHOD onModelReplaced
   METHOD onRowCountChanged
   METHOD onSeriesReplaced
   METHOD onValuesColumnChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QPieSeries>
#include <QAbstractItemModel>

using namespace QtCharts;

$prototype=explicit QVPieModelMapper(QObject *parent = Q_NULLPTR)
$constructor=|new|QObject *=Q_NULLPTR

%% $deleteMethod

%%
%% Q_PROPERTY(QPieSeries *series READ series WRITE setSeries NOTIFY seriesReplaced)
%%

$prototype=QPieSeries *series() const
$method=|QPieSeries *|series|

$prototype=void setSeries(QPieSeries *series)
$method=|void|setSeries|QPieSeries *

%%
%% Q_PROPERTY(QAbstractItemModel *model READ model WRITE setModel NOTIFY modelReplaced)
%%

$prototype=QAbstractItemModel *model() const
$method=|QAbstractItemModel *|model|

$prototype=void setModel(QAbstractItemModel *model)
$method=|void|setModel|QAbstractItemModel *

%%
%% Q_PROPERTY(int valuesColumn READ valuesColumn WRITE setValuesColumn NOTIFY valuesColumnChanged)
%%

$prototype=int valuesColumn() const
$method=|int|valuesColumn|

$prototype=void setValuesColumn(int valuesColumn)
$method=|void|setValuesColumn|int

%%
%% Q_PROPERTY(int labelsColumn READ labelsColumn WRITE setLabelsColumn NOTIFY labelsColumnChanged)
%%

$prototype=int labelsColumn() const
$method=|int|labelsColumn|

$prototype=void setLabelsColumn(int labelsColumn)
$method=|void|setLabelsColumn|int

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
