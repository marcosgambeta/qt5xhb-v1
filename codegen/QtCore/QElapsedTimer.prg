$header

#include "hbclass.ch"

CLASS QElapsedTimer

   DATA pointer
   DATA self_destruction INIT .F.

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

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QElapsedTimer()
*/
$constructor=|new|

$deleteMethod

/*
qint64 elapsed() const
*/
$method=|qint64|elapsed|

/*
bool hasExpired(qint64 timeout) const
*/
$method=|bool|hasExpired|qint64

/*
void invalidate()
*/
$method=|void|invalidate|

/*
bool isValid() const
*/
$method=|bool|isValid|

/*
qint64 msecsSinceReference() const
*/
$method=|qint64|msecsSinceReference|

/*
qint64 msecsTo(const QElapsedTimer & other) const
*/
$method=|qint64|msecsTo|const QElapsedTimer &

/*
qint64 nsecsElapsed() const
*/
$method=|qint64|nsecsElapsed|

/*
qint64 restart()
*/
$method=|qint64|restart|

/*
qint64 secsTo(const QElapsedTimer & other) const
*/
$method=|qint64|secsTo|const QElapsedTimer &

/*
void start()
*/
$method=|void|start|

/*
static ClockType clockType()
*/
$staticMethod=|QElapsedTimer::ClockType|clockType|

/*
static bool isMonotonic()
*/
$staticMethod=|bool|isMonotonic|

$extraMethods

#pragma ENDDUMP
