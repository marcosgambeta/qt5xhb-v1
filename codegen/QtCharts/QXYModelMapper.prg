%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,7,0

#include <QAbstractItemModel>
#include <QXYSeries>

using namespace QtCharts;

$prototype=explicit QXYModelMapper(QObject *parent = Q_NULLPTR) [protected]
%% $constructor=5,7,0|new|QObject *=Q_NULLPTR

%% $deleteMethod=5,7,0

$prototype=QAbstractItemModel *model() const [protected]
%% $method=5,7,0|QAbstractItemModel *|model|

$prototype=void setModel(QAbstractItemModel *model) [protected]
%% $method=5,7,0|void|setModel|QAbstractItemModel *

$prototype=QXYSeries *series() const [protected]
%% $method=5,7,0|QXYSeries *|series|

$prototype=void setSeries(QXYSeries *series) [protected]
%% $method=5,7,0|void|setSeries|QXYSeries *

$prototype=int first() const [protected]
%% $method=5,7,0|int|first|

$prototype=void setFirst(int first) [protected]
%% $method=5,7,0|void|setFirst|int

$prototype=int count() const [protected]
%% $method=5,7,0|int|count|

$prototype=void setCount(int count) [protected]
%% $method=5,7,0|void|setCount|int

$prototype=Qt::Orientation orientation() const [protected]
%% $method=5,7,0|Qt::Orientation|orientation|

$prototype=void setOrientation(Qt::Orientation orientation) [protected]
%% $method=5,7,0|void|setOrientation|Qt::Orientation

$prototype=int xSection() const [protected]
%% $method=5,7,0|int|xSection|

$prototype=void setXSection(int xSection) [protected]
%% $method=5,7,0|void|setXSection|int

$prototype=int ySection() const [protected]
%% $method=5,7,0|int|ySection|

$prototype=void setYSection(int ySection) [protected]
%% $method=5,7,0|void|setYSection|int

#pragma ENDDUMP
