$header

#include "hbclass.ch"

CLASS QApplicationStateChangeEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD applicationState

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QApplicationStateChangeEvent(Qt::ApplicationState state)
*/
$constructor=|new|Qt::ApplicationState

/*
Qt::ApplicationState applicationState() const
*/
$method=|Qt::ApplicationState|applicationState|

#pragma ENDDUMP
