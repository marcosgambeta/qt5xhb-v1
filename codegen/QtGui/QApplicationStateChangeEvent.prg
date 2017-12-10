$header

#include "hbclass.ch"

CLASS QApplicationStateChangeEvent INHERIT QEvent

   METHOD new
   METHOD applicationState

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QApplicationStateChangeEvent(Qt::ApplicationState state)
$constructor=|new|Qt::ApplicationState

$prototype=Qt::ApplicationState applicationState() const
$method=|Qt::ApplicationState|applicationState|

#pragma ENDDUMP
