$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSTATEMACHINE
REQUEST QSTATE
#endif

CLASS QAbstractState INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD machine
   METHOD parentState

   METHOD onEntered
   METHOD onExited

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
QStateMachine * machine () const
*/
$method=|QStateMachine *|machine|

/*
QState * parentState () const
*/
$method=|QState *|parentState|

#pragma ENDDUMP
