%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QCandlestickModelMapper

   METHOD new
%%   METHOD delete

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

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,8,0

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
using namespace QtCharts;
#endif

$prototype=explicit QVCandlestickModelMapper(QObject *parent = nullptr)
$constructor=5,8,0|new|QObject *=nullptr

%% $deleteMethod

%%
%% Q_PROPERTY(int timestampRow READ timestampRow WRITE setTimestampRow NOTIFY timestampRowChanged)
%%

$prototype=int timestampRow() const
$method=5,8,0|int|timestampRow|

$prototype=void setTimestampRow(int timestampRow)
$method=5,8,0|void|setTimestampRow|int

%%
%% Q_PROPERTY(int openRow READ openRow WRITE setOpenRow NOTIFY openRowChanged)
%%

$prototype=int openRow() const
$method=5,8,0|int|openRow|

$prototype=void setOpenRow(int openRow)
$method=5,8,0|void|setOpenRow|int

%%
%% Q_PROPERTY(int highRow READ highRow WRITE setHighRow NOTIFY highRowChanged)
%%

$prototype=int highRow() const
$method=5,8,0|int|highRow|

$prototype=void setHighRow(int highRow)
$method=5,8,0|void|setHighRow|int

%%
%% Q_PROPERTY(int lowRow READ lowRow WRITE setLowRow NOTIFY lowRowChanged)
%%

$prototype=int lowRow() const
$method=5,8,0|int|lowRow|

$prototype=void setLowRow(int lowRow)
$method=5,8,0|void|setLowRow|int

%%
%% Q_PROPERTY(int closeRow READ closeRow WRITE setCloseRow NOTIFY closeRowChanged)
%%

$prototype=int closeRow() const
$method=5,8,0|int|closeRow|

$prototype=void setCloseRow(int closeRow)
$method=5,8,0|void|setCloseRow|int

%%
%% Q_PROPERTY(int firstSetColumn READ firstSetColumn WRITE setFirstSetColumn NOTIFY firstSetColumnChanged)
%%

$prototype=int firstSetColumn() const
$method=5,8,0|int|firstSetColumn|

$prototype=void setFirstSetColumn(int firstSetColumn)
$method=5,8,0|void|setFirstSetColumn|int

%%
%% Q_PROPERTY(int lastSetColumn READ lastSetColumn WRITE setLastSetColumn NOTIFY lastSetColumnChanged)
%%

$prototype=int lastSetColumn() const
$method=5,8,0|int|lastSetColumn|

$prototype=void setLastSetColumn(int lastSetColumn)
$method=5,8,0|void|setLastSetColumn|int

%%
%%
%%

$prototype=Qt::Orientation orientation() const
$method=5,8,0|Qt::Orientation|orientation|

$beginSignals
$signal=5,8,0|closeRowChanged()
$signal=5,8,0|firstSetColumnChanged()
$signal=5,8,0|highRowChanged()
$signal=5,8,0|lastSetColumnChanged()
$signal=5,8,0|lowRowChanged()
$signal=5,8,0|openRowChanged()
$signal=5,8,0|timestampRowChanged()
$endSignals

#pragma ENDDUMP
