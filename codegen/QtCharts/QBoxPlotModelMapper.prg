%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCharts

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,7,0

using namespace QtCharts;

$prototype=explicit QBoxPlotModelMapper(QObject *parent = Q_NULLPTR) [protected]

%% $deleteMethod

$prototype=QAbstractItemModel *model() const [protected]

$prototype=void setModel(QAbstractItemModel *model) [protected]

$prototype=QBoxPlotSeries *series() const [protected]

$prototype=void setSeries(QBoxPlotSeries *series) [protected]

$prototype=int first() const [protected]

$prototype=void setFirst(int first) [protected]

$prototype=int count() const [protected]

$prototype=void setCount(int count) [protected]

$prototype=int firstBoxSetSection() const [protected]

$prototype=void setFirstBoxSetSection(int firstBoxSetSection) [protected]

$prototype=int lastBoxSetSection() const [protected]

$prototype=void setLastBoxSetSection(int lastBoxSetSection) [protected]

$prototype=Qt::Orientation orientation() const [protected]

$prototype=void setOrientation(Qt::Orientation orientation) [protected]

#pragma ENDDUMP
