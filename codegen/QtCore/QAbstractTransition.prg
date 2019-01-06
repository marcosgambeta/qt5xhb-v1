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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

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
