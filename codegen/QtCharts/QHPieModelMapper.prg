%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QHPieModelMapper INHERIT QPieModelMapper

   METHOD new
%%   METHOD delete

   METHOD columnCount
   METHOD firstColumn
   METHOD labelsRow
   METHOD model
   METHOD series
   METHOD setColumnCount
   METHOD setFirstColumn
   METHOD setLabelsRow
   METHOD setModel
   METHOD setSeries
   METHOD setValuesRow
   METHOD valuesRow

   METHOD onColumnCountChanged
   METHOD onFirstColumnChanged
   METHOD onLabelsRowChanged
   METHOD onModelReplaced
   METHOD onSeriesReplaced
   METHOD onValuesRowChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QPieSeries>
#include <QAbstractItemModel>

using namespace QtCharts;

$prototype=explicit QHPieModelMapper(QObject *parent = Q_NULLPTR)
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
%% Q_PROPERTY(int valuesRow READ valuesRow WRITE setValuesRow NOTIFY valuesRowChanged)
%%

$prototype=int valuesRow() const
$method=|int|valuesRow|

$prototype=void setValuesRow(int valuesRow)
$method=|void|setValuesRow|int

%%
%% Q_PROPERTY(int labelsRow READ labelsRow WRITE setLabelsRow NOTIFY labelsRowChanged)
%%

$prototype=int labelsRow() const
$method=|int|labelsRow|

$prototype=void setLabelsRow(int labelsRow)
$method=|void|setLabelsRow|int

%%
%% Q_PROPERTY(int firstColumn READ firstColumn WRITE setFirstColumn NOTIFY firstColumnChanged)
%%

$prototype=int firstColumn() const
$method=|int|firstColumn|

$prototype=void setFirstColumn(int firstColumn)
$method=|void|setFirstColumn|int

%%
%% Q_PROPERTY(int columnCount READ columnCount WRITE setColumnCount NOTIFY columnCountChanged)
%%

$prototype=int columnCount() const
$method=|int|columnCount|

$prototype=void setColumnCount(int columnCount)
$method=|void|setColumnCount|int

%%
%%
%%

#pragma ENDDUMP
