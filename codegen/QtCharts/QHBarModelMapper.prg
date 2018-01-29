%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QHBarModelMapper INHERIT QBarModelMapper

   METHOD new
   //METHOD delete

   METHOD columnCount
   METHOD firstBarSetRow
   METHOD firstColumn
   METHOD lastBarSetRow
   METHOD model
   METHOD series
   METHOD setColumnCount
   METHOD setFirstBarSetRow
   METHOD setFirstColumn
   METHOD setLastBarSetRow
   METHOD setModel
   METHOD setSeries

   METHOD onColumnCountChanged
   METHOD onFirstBarSetRowChanged
   METHOD onFirstColumnChanged
   METHOD onLastBarSetRowChanged
   METHOD onModelReplaced
   METHOD onSeriesReplaced

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QHBarModelMapper(QObject *parent = Q_NULLPTR)
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
%% Q_PROPERTY(int firstBarSetRow READ firstBarSetRow WRITE setFirstBarSetRow NOTIFY firstBarSetRowChanged)
%%

$prototype=int firstBarSetRow() const
$method=|int|firstBarSetRow|

$prototype=void setFirstBarSetRow(int firstBarSetRow)
$method=|void|setFirstBarSetRow|int

%%
%% Q_PROPERTY(int lastBarSetRow READ lastBarSetRow WRITE setLastBarSetRow NOTIFY lastBarSetRowChanged)
%%

$prototype=int lastBarSetRow() const
$method=|int|lastBarSetRow|

$prototype=void setLastBarSetRow(int lastBarSetRow)
$method=|void|setLastBarSetRow|int

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
