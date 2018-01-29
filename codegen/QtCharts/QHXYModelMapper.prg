%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QHXYModelMapper INHERIT QXYModelMapper

   METHOD new
%%   METHOD delete

   METHOD columnCount
   METHOD firstColumn
   METHOD model
   METHOD series
   METHOD setColumnCount
   METHOD setFirstColumn
   METHOD setModel
   METHOD setSeries
   METHOD setXRow
   METHOD setYRow
   METHOD xRow
   METHOD yRow

   METHOD onColumnCountChanged
   METHOD onFirstColumnChanged
   METHOD onModelReplaced
   METHOD onSeriesReplaced
   METHOD onXRowChanged
   METHOD onYRowChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QHXYModelMapper(QObject *parent = Q_NULLPTR)
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
%% Q_PROPERTY(int xRow READ xRow WRITE setXRow NOTIFY xRowChanged)
%%

$prototype=int xRow() const
$method=|int|xRow|

$prototype=void setXRow(int xRow)
$method=|void|setXRow|int

%%
%% Q_PROPERTY(int yRow READ yRow WRITE setYRow NOTIFY yRowChanged)
%%

$prototype=int yRow() const
$method=|int|yRow|

$prototype=void setYRow(int yRow)
$method=|void|setYRow|int

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
