%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCharts

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QCandlestickModelMapper

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,8,0

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
using namespace QtCharts;
#endif

$prototype=explicit QHCandlestickModelMapper(QObject *parent = nullptr)
$constructor=5,8,0|new|QObject *=nullptr

%% $deleteMethod

%%
%% Q_PROPERTY(int timestampColumn READ timestampColumn WRITE setTimestampColumn NOTIFY timestampColumnChanged)
%%

$prototype=int timestampColumn() const
$method=5,8,0|int|timestampColumn|

$prototype=void setTimestampColumn(int timestampColumn)
$method=5,8,0|void|setTimestampColumn|int

%%
%% Q_PROPERTY(int openColumn READ openColumn WRITE setOpenColumn NOTIFY openColumnChanged)
%%

$prototype=int openColumn() const
$method=5,8,0|int|openColumn|

$prototype=void setOpenColumn(int openColumn)
$method=5,8,0|void|setOpenColumn|int

%%
%% Q_PROPERTY(int highColumn READ highColumn WRITE setHighColumn NOTIFY highColumnChanged)
%%

$prototype=int highColumn() const
$method=5,8,0|int|highColumn|

$prototype=void setHighColumn(int highColumn)
$method=5,8,0|void|setHighColumn|int

%%
%% Q_PROPERTY(int lowColumn READ lowColumn WRITE setLowColumn NOTIFY lowColumnChanged)
%%

$prototype=int lowColumn() const
$method=5,8,0|int|lowColumn|

$prototype=void setLowColumn(int lowColumn)
$method=5,8,0|void|setLowColumn|int

%%
%% Q_PROPERTY(int closeColumn READ closeColumn WRITE setCloseColumn NOTIFY closeColumnChanged)
%%

$prototype=int closeColumn() const
$method=5,8,0|int|closeColumn|

$prototype=void setCloseColumn(int closeColumn)
$method=5,8,0|void|setCloseColumn|int

%%
%% Q_PROPERTY(int firstSetRow READ firstSetRow WRITE setFirstSetRow NOTIFY firstSetRowChanged)
%%

$prototype=int firstSetRow() const
$method=5,8,0|int|firstSetRow|

$prototype=void setFirstSetRow(int firstSetRow)
$method=5,8,0|void|setFirstSetRow|int

%%
%% Q_PROPERTY(int lastSetRow READ lastSetRow WRITE setLastSetRow NOTIFY lastSetRowChanged)
%%

$prototype=int lastSetRow() const
$method=5,8,0|int|lastSetRow|

$prototype=void setLastSetRow(int lastSetRow)
$method=5,8,0|void|setLastSetRow|int

%%
%%
%%

$prototype=Qt::Orientation orientation() const
$method=5,8,0|Qt::Orientation|orientation|

$beginSignals
$signal=5,8,0|closeColumnChanged()
$signal=5,8,0|firstSetRowChanged()
$signal=5,8,0|highColumnChanged()
$signal=5,8,0|lastSetRowChanged()
$signal=5,8,0|lowColumnChanged()
$signal=5,8,0|openColumnChanged()
$signal=5,8,0|timestampColumnChanged()
$endSignals

#pragma ENDDUMP
