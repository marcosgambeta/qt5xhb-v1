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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,8,0

#include <QtCore/QAbstractItemModel>
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QtCharts/QCandlestickSeries>
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
using namespace QtCharts;
#endif

$prototype=explicit QCandlestickModelMapper(QObject *parent = nullptr) (abstract)
%% $constructor=5,8,0|new|QObject *=nullptr

%% $deleteMethod

%%
%% Q_PROPERTY(QAbstractItemModel *model READ model WRITE setModel NOTIFY modelReplaced)
%%

$prototype=QAbstractItemModel *model() const
$method=5,8,0|QAbstractItemModel *|model|

$prototype=void setModel(QAbstractItemModel *model)
$method=5,8,0|void|setModel|QAbstractItemModel *

%%
%% Q_PROPERTY(QCandlestickSeries *series READ series WRITE setSeries NOTIFY seriesReplaced)
%%

$prototype=QCandlestickSeries *series() const
$method=5,8,0|QCandlestickSeries *|series|

$prototype=void setSeries(QCandlestickSeries *series)
$method=5,8,0|void|setSeries|QCandlestickSeries *

%%
%%
%%

$prototype=virtual Qt::Orientation orientation() const = 0
$virtualMethod=5,8,0|Qt::Orientation|orientation|

$prototype=void setTimestamp(int timestamp) [protected]

$prototype=int timestamp() const [protected]

$prototype=void setOpen(int open) [protected]

$prototype=int open() const [protected]

$prototype=void setHigh(int high) [protected]

$prototype=int high() const [protected]

$prototype=void setLow(int low) [protected]

$prototype=int low() const [protected]

$prototype=void setClose(int close) [protected]

$prototype=int close() const [protected]

$prototype=void setFirstSetSection(int firstSetSection) [protected]

$prototype=int firstSetSection() const [protected]

$prototype=void setLastSetSection(int lastSetSection) [protected]

$prototype=int lastSetSection() const [protected]

$beginSignals
$signal=5,8,0|modelReplaced()
$signal=5,8,0|seriesReplaced()
$endSignals

#pragma ENDDUMP
