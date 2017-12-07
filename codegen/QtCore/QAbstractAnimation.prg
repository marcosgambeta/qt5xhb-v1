$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QANIMATIONGROUP
#endif

CLASS QAbstractAnimation INHERIT QObject

   METHOD delete
   METHOD currentLoop
   METHOD currentLoopTime
   METHOD currentTime
   METHOD setCurrentTime
   METHOD direction
   METHOD setDirection
   METHOD duration
   METHOD group
   METHOD loopCount
   METHOD setLoopCount
   METHOD state
   METHOD totalDuration
   METHOD pause
   METHOD resume
   METHOD setPaused
   METHOD start
   METHOD stop

   METHOD onCurrentLoopChanged
   METHOD onDirectionChanged
   METHOD onFinished
   METHOD onStateChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

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
$method=|int|duration|

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

#pragma ENDDUMP
