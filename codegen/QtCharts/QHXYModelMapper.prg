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

$includes=5,7,0

#include <QXYSeries>
#include <QAbstractItemModel>

using namespace QtCharts;

$prototype=explicit QHXYModelMapper(QObject *parent = Q_NULLPTR)
$constructor=5,7,0|new|QObject *=Q_NULLPTR

%% $deleteMethod=5,7,0

%%
%% Q_PROPERTY(QXYSeries *series READ series WRITE setSeries NOTIFY seriesReplaced)
%%

$prototype=QXYSeries *series() const
$method=5,7,0|QXYSeries *|series|

$prototype=void setSeries(QXYSeries *series)
$method=5,7,0|void|setSeries|QXYSeries *

%%
%% Q_PROPERTY(QAbstractItemModel *model READ model WRITE setModel NOTIFY modelReplaced)
%%

$prototype=QAbstractItemModel *model() const
$method=5,7,0|QAbstractItemModel *|model|

$prototype=void setModel(QAbstractItemModel *model)
$method=5,7,0|void|setModel|QAbstractItemModel *

%%
%% Q_PROPERTY(int xRow READ xRow WRITE setXRow NOTIFY xRowChanged)
%%

$prototype=int xRow() const
$method=5,7,0|int|xRow|

$prototype=void setXRow(int xRow)
$method=5,7,0|void|setXRow|int

%%
%% Q_PROPERTY(int yRow READ yRow WRITE setYRow NOTIFY yRowChanged)
%%

$prototype=int yRow() const
$method=5,7,0|int|yRow|

$prototype=void setYRow(int yRow)
$method=5,7,0|void|setYRow|int

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

$connectSignalFunction

$signalMethod=5,7,0|columnCountChanged()
$signalMethod=5,7,0|firstColumnChanged()
$signalMethod=5,7,0|modelReplaced()
$signalMethod=5,7,0|seriesReplaced()
$signalMethod=5,7,0|xRowChanged()
$signalMethod=5,7,0|yRowChanged()

#pragma ENDDUMP
