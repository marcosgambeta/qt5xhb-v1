%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QVCandlestickModelMapper INHERIT QCandlestickModelMapper

   METHOD new
   METHOD delete

   METHOD closeRow
   METHOD firstSetColumn
   METHOD highRow
   METHOD lastSetColumn
   METHOD lowRow
   METHOD openRow
   METHOD orientation
   METHOD setCloseRow
   METHOD setFirstSetColumn
   METHOD setHighRow
   METHOD setLastSetColumn
   METHOD setLowRow
   METHOD setOpenRow
   METHOD setTimestampRow
   METHOD timestampRow

   METHOD onCloseRowChanged
   METHOD onFirstSetColumnChanged
   METHOD onHighRowChanged
   METHOD onLastSetColumnChanged
   METHOD onLowRowChanged
   METHOD onOpenRowChanged
   METHOD onTimestampRowChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

using namespace QtCharts;

$prototype=explicit QVCandlestickModelMapper(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

%% $deleteMethod

%%
%% Q_PROPERTY(int timestampRow READ timestampRow WRITE setTimestampRow NOTIFY timestampRowChanged)
%%

$prototype=int timestampRow() const
$method=|int|timestampRow|

$prototype=void setTimestampRow(int timestampRow)
$method=|void|setTimestampRow|int

%%
%% Q_PROPERTY(int openRow READ openRow WRITE setOpenRow NOTIFY openRowChanged)
%%

$prototype=int openRow() const
$method=|int|openRow|

$prototype=void setOpenRow(int openRow)
$method=|void|setOpenRow|int

%%
%% Q_PROPERTY(int highRow READ highRow WRITE setHighRow NOTIFY highRowChanged)
%%

$prototype=int highRow() const
$method=|int|highRow|

$prototype=void setHighRow(int highRow)
$method=|void|setHighRow|int

%%
%% Q_PROPERTY(int lowRow READ lowRow WRITE setLowRow NOTIFY lowRowChanged)
%%

$prototype=int lowRow() const
$method=|int|lowRow|

$prototype=void setLowRow(int lowRow)
$method=|void|setLowRow|int

%%
%% Q_PROPERTY(int closeRow READ closeRow WRITE setCloseRow NOTIFY closeRowChanged)
%%

$prototype=int closeRow() const
$method=|int|closeRow|

$prototype=void setCloseRow(int closeRow)
$method=|void|setCloseRow|int

%%
%% Q_PROPERTY(int firstSetColumn READ firstSetColumn WRITE setFirstSetColumn NOTIFY firstSetColumnChanged)
%%

$prototype=int firstSetColumn() const
$method=|int|firstSetColumn|

$prototype=void setFirstSetColumn(int firstSetColumn)
$method=|void|setFirstSetColumn|int

%%
%% Q_PROPERTY(int lastSetColumn READ lastSetColumn WRITE setLastSetColumn NOTIFY lastSetColumnChanged)
%%

$prototype=int lastSetColumn() const
$method=|int|lastSetColumn|

$prototype=void setLastSetColumn(int lastSetColumn)
$method=|void|setLastSetColumn|int

%%
%%
%%

$prototype=Qt::Orientation orientation() const
$method=|Qt::Orientation|orientation|

#pragma ENDDUMP
