%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClass

   METHOD new
   METHOD delete
   METHOD elapsed
   METHOD hasExpired
   METHOD invalidate
   METHOD isValid
   METHOD msecsSinceReference
   METHOD msecsTo
   METHOD nsecsElapsed
   METHOD restart
   METHOD secsTo
   METHOD start
   METHOD clockType
   METHOD isMonotonic

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QElapsedTimer()
$constructor=|new|

$deleteMethod

$prototype=qint64 elapsed() const
$method=|qint64|elapsed|

$prototype=bool hasExpired(qint64 timeout) const
$method=|bool|hasExpired|qint64

$prototype=void invalidate()
$method=|void|invalidate|

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=qint64 msecsSinceReference() const
$method=|qint64|msecsSinceReference|

$prototype=qint64 msecsTo(const QElapsedTimer & other) const
$method=|qint64|msecsTo|const QElapsedTimer &

$prototype=qint64 nsecsElapsed() const
$method=|qint64|nsecsElapsed|

$prototype=qint64 restart()
$method=|qint64|restart|

$prototype=qint64 secsTo(const QElapsedTimer & other) const
$method=|qint64|secsTo|const QElapsedTimer &

$prototype=void start()
$method=|void|start|

$prototype=static ClockType clockType()
$staticMethod=|QElapsedTimer::ClockType|clockType|

$prototype=static bool isMonotonic()
$staticMethod=|bool|isMonotonic|

$extraMethods

#pragma ENDDUMP
