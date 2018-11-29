%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

$prototype=explicit QPieModelMapper(QObject *parent = Q_NULLPTR) [protected]

%% $deleteMethod=5,7,0

$prototype=QAbstractItemModel *model() const [protected]

$prototype=void setModel(QAbstractItemModel *model) [protected]

$prototype=QPieSeries *series() const [protected]

$prototype=void setSeries(QPieSeries *series) [protected]

$prototype=int first() const [protected]

$prototype=void setFirst(int first) [protected]

$prototype=int count() const [protected]

$prototype=void setCount(int count) [protected]

$prototype=int valuesSection() const [protected]

$prototype=void setValuesSection(int valuesSection) [protected]

$prototype=int labelsSection() const [protected]

$prototype=void setLabelsSection(int labelsSection) [protected]

$prototype=Qt::Orientation orientation() const [protected]

$prototype=void setOrientation(Qt::Orientation orientation) [protected]

#pragma ENDDUMP
