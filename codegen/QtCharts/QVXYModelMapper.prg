%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QVXYModelMapper INHERIT QXYModelMapper

   METHOD new
   METHOD delete

   METHOD firstRow
   METHOD model
   METHOD rowCount
   METHOD series
   METHOD setFirstRow
   METHOD setModel
   METHOD setRowCount
   METHOD setSeries
   METHOD setXColumn
   METHOD setYColumn
   METHOD xColumn
   METHOD yColumn

   METHOD onFirstRowChanged
   METHOD onModelReplaced
   METHOD onRowCountChanged
   METHOD onSeriesReplaced
   METHOD onXColumnChanged
   METHOD onYColumnChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QVXYModelMapper(QObject *parent = Q_NULLPTR)
$constructor=|new|QObject *=Q_NULLPTR

%% $deleteMethod

%%
%% Q_PROPERTY(QXYSeries *series READ series WRITE setSeries NOTIFY seriesReplaced)
%%

$prototype=QXYSeries *series() const
$method=|QXYSeries *|series|

$prototype=void setSeries(QXYSeries *series)
$method=|void|setSeries|QXYSeries *

%%
%% Q_PROPERTY(QAbstractItemModel *model READ model WRITE setModel NOTIFY modelReplaced)
%%

$prototype=QAbstractItemModel *model() const
$method=|QAbstractItemModel *|model|

$prototype=void setModel(QAbstractItemModel *model)
$method=|void|setModel|QAbstractItemModel *

%%
%% Q_PROPERTY(int xColumn READ xColumn WRITE setXColumn NOTIFY xColumnChanged)
%%

$prototype=int xColumn() const
$method=|int|xColumn|

$prototype=void setXColumn(int xColumn)
$method=|void|setXColumn|int

%%
%% Q_PROPERTY(int yColumn READ yColumn WRITE setYColumn NOTIFY yColumnChanged)
%%

$prototype=int yColumn() const
$method=|int|yColumn|

$prototype=void setYColumn(int yColumn)
$method=|void|setYColumn|int

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
