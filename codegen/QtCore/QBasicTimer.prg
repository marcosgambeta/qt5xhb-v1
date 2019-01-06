%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QBasicTimer ()
$constructor=|new|

$deleteMethod

$prototype=bool isActive () const
$method=|bool|isActive|

$prototype=void start ( int msec, QObject * object )
$method=|void|start|int,QObject *

$prototype=void stop ()
$method=|void|stop|

$prototype=int timerId () const
$method=|int|timerId|

$extraMethods

#pragma ENDDUMP
