%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QInputEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QList>
#include <QWindow>

$deleteMethod

$prototype=QWindow *window() const
$method=|QWindow *|window|

$prototype=QObject *target() const
$method=|QObject *|target|

$prototype=Qt::TouchPointStates touchPointStates() const
$method=|Qt::TouchPointStates|touchPointStates|

$prototype=QTouchDevice *device() const
$method=|QTouchDevice *|device|

#pragma ENDDUMP
