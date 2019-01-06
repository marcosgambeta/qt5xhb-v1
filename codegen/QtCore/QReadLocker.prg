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

$prototype=QReadLocker(QReadWriteLock *readWriteLock)
$constructor=|new|QReadWriteLock *

$deleteMethod

$prototype=void unlock()
$method=|void|unlock|

$prototype=void relock()
$method=|void|relock|

$prototype=QReadWriteLock *readWriteLock() const
$method=|QReadWriteLock *|readWriteLock|

$extraMethods

#pragma ENDDUMP
