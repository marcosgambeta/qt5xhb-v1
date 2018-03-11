%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QHBarModelMapper INHERIT QBarModelMapper

   METHOD new
%%   METHOD delete

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

$includes=5,7,0

#include <QAbstractBarSeries>
#include <QAbstractItemModel>

using namespace QtCharts;

$prototype=explicit QHBarModelMapper(QObject *parent = Q_NULLPTR)
$constructor=5,7,0|new|QObject *=Q_NULLPTR

%% $deleteMethod

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
%% Q_PROPERTY(int firstBarSetRow READ firstBarSetRow WRITE setFirstBarSetRow NOTIFY firstBarSetRowChanged)
%%

$prototype=int firstBarSetRow() const
$method=5,7,0|int|firstBarSetRow|

$prototype=void setFirstBarSetRow(int firstBarSetRow)
$method=5,7,0|void|setFirstBarSetRow|int

%%
%% Q_PROPERTY(int lastBarSetRow READ lastBarSetRow WRITE setLastBarSetRow NOTIFY lastBarSetRowChanged)
%%

$prototype=int lastBarSetRow() const
$method=5,7,0|int|lastBarSetRow|

$prototype=void setLastBarSetRow(int lastBarSetRow)
$method=5,7,0|void|setLastBarSetRow|int

%%
%% Q_PROPERTY(int firstColumn READ firstColumn WRITE setFirstColumn NOTIFY firstColumnChanged)
%%

$prototype=int firstColumn() const
$method=5,7,0|int|firstColumn|

$prototype=void setFirstColumn(int firstColumn)
$method=5,7,0|void|setFirstColumn|int

%%
%% Q_PROPERTY(int columnCount READ columnCount WRITE setColumnCount NOTIFY columnCountChanged)
%%

$prototype=int columnCount() const
$method=5,7,0|int|columnCount|

$prototype=void setColumnCount(int columnCount)
$method=5,7,0|void|setColumnCount|int

%%
%%
%%

$beginSignals
$signal=5,7,0|columnCountChanged()
$signal=5,7,0|firstBarSetRowChanged()
$signal=5,7,0|firstColumnChanged()
$signal=5,7,0|lastBarSetRowChanged()
$signal=5,7,0|modelReplaced()
$signal=5,7,0|seriesReplaced()
$endSignals

#pragma ENDDUMP
