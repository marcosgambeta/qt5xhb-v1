%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

#include <QAnimationGroup>

$deleteMethod

$prototype=int currentLoop () const
$method=|int|currentLoop|

$prototype=int currentLoopTime () const
$method=|int|currentLoopTime|

$prototype=int currentTime () const
$method=|int|currentTime|

$prototype=void setCurrentTime ( int msecs )
$method=|void|setCurrentTime|int

$prototype=Direction direction () const
$method=|QAbstractAnimation::Direction|direction|

$prototype=void  setDirection ( Direction direction )
$method=|void|setDirection|QAbstractAnimation::Direction

$prototype=virtual int duration () const = 0
$virtualMethod=|int|duration|

$prototype=QAnimationGroup * group () const
$method=|QAnimationGroup *|group|

$prototype=int loopCount () const
$method=|int|loopCount|

$prototype=void setLoopCount ( int loopCount )
$method=|void|setLoopCount|int

$prototype=State state () const
$method=|QAbstractAnimation::State|state|

$prototype=int totalDuration () const
$method=|int|totalDuration|

$prototype=void pause ()
$method=|void|pause|

$prototype=void resume ()
$method=|void|resume|

$prototype=void setPaused ( bool paused )
$method=|void|setPaused|bool

$prototype=void start ( QAbstractAnimation::DeletionPolicy policy = KeepWhenStopped )
$method=|void|start|QAbstractAnimation::DeletionPolicy=QAbstractAnimation::KeepWhenStopped

$prototype=void stop ()
$method=|void|stop|

$beginSignals
$signal=|currentLoopChanged(int)
$signal=|directionChanged(QAbstractAnimation::Direction)
$signal=|finished()
$signal=|stateChanged(QAbstractAnimation::State,QAbstractAnimation::State)
$endSignals

#pragma ENDDUMP
