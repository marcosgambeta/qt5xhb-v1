$header

#include "hbclass.ch"

CLASS QBasicTimer

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isActive
   METHOD start
   METHOD stop
   METHOD timerId

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
