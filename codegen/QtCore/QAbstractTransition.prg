%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

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

#include <QStateMachine>
#include <QState>
#include <QAbstractState>

$deleteMethod

$prototype=void addAnimation ( QAbstractAnimation * animation )
$method=|void|addAnimation|QAbstractAnimation *

$prototype=QList<QAbstractAnimation *> animations () const
$method=|QList<QAbstractAnimation *>|animations|

$prototype=QStateMachine * machine () const
$method=|QStateMachine *|machine|

$prototype=void removeAnimation ( QAbstractAnimation * animation )
$method=|void|removeAnimation|QAbstractAnimation *

$prototype=void setTargetState ( QAbstractState * target )
$method=|void|setTargetState|QAbstractState *

$prototype=void setTargetStates ( const QList<QAbstractState *> & targets )
$method=|void|setTargetStates|const QList<QAbstractState *> &

$prototype=QState * sourceState () const
$method=|QState *|sourceState|

$prototype=QAbstractState * targetState () const
$method=|QAbstractState *|targetState|

$prototype=QList<QAbstractState *> targetStates () const
$method=|QList<QAbstractState *>|targetStates|

$beginSignals
$signal=|triggered()
$endSignals

#pragma ENDDUMP
