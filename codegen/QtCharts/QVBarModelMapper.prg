%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QVBarModelMapper INHERIT QBarModelMapper

   METHOD new
   METHOD delete

   METHOD firstBarSetColumn
   METHOD firstRow
   METHOD lastBarSetColumn
   METHOD model
   METHOD rowCount
   METHOD series
   METHOD setFirstBarSetColumn
   METHOD setFirstRow
   METHOD setLastBarSetColumn
   METHOD setModel
   METHOD setRowCount
   METHOD setSeries

   METHOD onFirstBarSetColumnChanged
   METHOD onFirstRowChanged
   METHOD onLastBarSetColumnChanged
   METHOD onModelReplaced
   METHOD onRowCountChanged
   METHOD onSeriesReplaced

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QVBarModelMapper(QObject *parent = Q_NULLPTR)
$constructor=|new|QObject *=Q_NULLPTR

%% $deleteMethod

%%
%% Q_PROPERTY(QAbstractBarSeries *series READ series WRITE setSeries NOTIFY seriesReplaced)
%%

$prototype=QAbstractBarSeries *series() const
$method=|QAbstractBarSeries *|series|

$prototype=void setSeries(QAbstractBarSeries *series)
$method=|void|setSeries|QAbstractBarSeries *

%%
%% Q_PROPERTY(QAbstractItemModel *model READ model WRITE setModel NOTIFY modelReplaced)
%%

$prototype=QAbstractItemModel *model() const
$method=|QAbstractItemModel *|model|

$prototype=void setModel(QAbstractItemModel *model)
$method=|void|setModel|QAbstractItemModel *

%%
%% Q_PROPERTY(int firstBarSetColumn READ firstBarSetColumn WRITE setFirstBarSetColumn NOTIFY firstBarSetColumnChanged)
%%

$prototype=int firstBarSetColumn() const
$method=|int|firstBarSetColumn|

$prototype=void setFirstBarSetColumn(int firstBarSetColumn)
$method=|void|setFirstBarSetColumn|int

%%
%% Q_PROPERTY(int lastBarSetColumn READ lastBarSetColumn WRITE setLastBarSetColumn NOTIFY lastBarSetColumnChanged)
%%

$prototype=int lastBarSetColumn() const
$method=|int|lastBarSetColumn|

$prototype=void setLastBarSetColumn(int lastBarSetColumn)
$method=|void|setLastBarSetColumn|int

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
