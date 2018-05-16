%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QREADWRITELOCK
#endif

$beginClass

   METHOD new
   METHOD delete
   METHOD readWriteLock
   METHOD relock
   METHOD unlock

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QWriteLocker(QReadWriteLock * lock)
$constructor=|new|QReadWriteLock *

$deleteMethod

$prototype=QReadWriteLock * readWriteLock() const
$method=|QReadWriteLock *|readWriteLock|

$prototype=void relock()
$method=|void|relock|

$prototype=void unlock()
$method=|void|unlock|

$extraMethods

#pragma ENDDUMP
