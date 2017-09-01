$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTANIMATION
REQUEST QSTATEMACHINE
REQUEST QSTATE
REQUEST QABSTRACTSTATE
#endif

CLASS QAbstractTransition INHERIT QObject

   METHOD delete
   METHOD addAnimation
   METHOD animations
   METHOD machine
   METHOD removeAnimation
   METHOD setTargetState
   METHOD setTargetStates
   METHOD sourceState
   METHOD targetState
   METHOD targetStates

   METHOD onTriggered

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
void addAnimation ( QAbstractAnimation * animation )
*/
$method=|void|addAnimation|QAbstractAnimation *

/*
QList<QAbstractAnimation *> animations () const
*/
$method=|QList<QAbstractAnimation *>|animations|

/*
QStateMachine * machine () const
*/
$method=|QStateMachine *|machine|

/*
void removeAnimation ( QAbstractAnimation * animation )
*/
$method=|void|removeAnimation|QAbstractAnimation *

/*
void setTargetState ( QAbstractState * target )
*/
$method=|void|setTargetState|QAbstractState *

/*
void setTargetStates ( const QList<QAbstractState *> & targets )
*/
$method=|void|setTargetStates|const QList<QAbstractState *> &

/*
QState * sourceState () const
*/
$method=|QState *|sourceState|

/*
QAbstractState * targetState () const
*/
$method=|QAbstractState *|targetState|

/*
QList<QAbstractState *> targetStates () const
*/
$method=|QList<QAbstractState *>|targetStates|

#pragma ENDDUMP
