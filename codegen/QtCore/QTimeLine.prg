%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QTimeLine INHERIT QObject

   METHOD new
   METHOD delete
   METHOD currentFrame
   METHOD currentTime
   METHOD currentValue
   METHOD curveShape
   METHOD direction
   METHOD duration
   METHOD endFrame
   METHOD frameForTime
   METHOD loopCount
   METHOD setCurveShape
   METHOD setDirection
   METHOD setDuration
   METHOD setEasingCurve
   METHOD setEndFrame
   METHOD setFrameRange
   METHOD setLoopCount
   METHOD setStartFrame
   METHOD setUpdateInterval
   METHOD startFrame
   METHOD state
   METHOD updateInterval
   METHOD valueForTime
   METHOD resume
   METHOD setCurrentTime
   METHOD setPaused
   METHOD start
   METHOD stop
   METHOD toggleDirection

   METHOD onFinished
   METHOD onFrameChanged
   METHOD onStateChanged
   METHOD onValueChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTimeLine ( int duration = 1000, QObject * parent = 0 )
$constructor=|new|int=1000,QObject *=0

$deleteMethod

$prototype=int currentFrame () const
$method=|int|currentFrame|

$prototype=int currentTime () const
$method=|int|currentTime|

$prototype=qreal currentValue () const
$method=|qreal|currentValue|

$prototype=CurveShape curveShape () const
$method=|QTimeLine::CurveShape|curveShape|

$prototype=Direction direction () const
$method=|QTimeLine::Direction|direction|

$prototype=int duration () const
$method=|int|duration|

$prototype=int endFrame () const
$method=|int|endFrame|

$prototype=int frameForTime ( int msec ) const
$method=|int|frameForTime|int

$prototype=int loopCount () const
$method=|int|loopCount|

$prototype=void setCurveShape ( CurveShape shape )
$method=|void|setCurveShape|QTimeLine::CurveShape

$prototype=void setDirection ( Direction direction )
$method=|void|setDirection|QTimeLine::Direction

$prototype=void setDuration ( int duration )
$method=|void|setDuration|int

$prototype=void setEasingCurve ( const QEasingCurve & curve )
$method=|void|setEasingCurve|const QEasingCurve &

$prototype=void setEndFrame ( int frame )
$method=|void|setEndFrame|int

$prototype=void setFrameRange ( int startFrame, int endFrame )
$method=|void|setFrameRange|int,int

$prototype=void setLoopCount ( int count )
$method=|void|setLoopCount|int

$prototype=void setStartFrame ( int frame )
$method=|void|setStartFrame|int

$prototype=void setUpdateInterval ( int interval )
$method=|void|setUpdateInterval|int

$prototype=int startFrame () const
$method=|int|startFrame|

$prototype=State state () const
$method=|QTimeLine::State|state|

$prototype=int updateInterval () const
$method=|int|updateInterval|

$prototype=virtual qreal valueForTime ( int msec ) const
$virtualMethod=|qreal|valueForTime|int

$prototype=void resume ()
$method=|void|resume|

$prototype=void setCurrentTime ( int msec )
$method=|void|setCurrentTime|int

$prototype=void setPaused ( bool paused )
$method=|void|setPaused|bool

$prototype=void start ()
$method=|void|start|

$prototype=void stop ()
$method=|void|stop|

$prototype=void toggleDirection ()
$method=|void|toggleDirection|

$connectSignalFunction

$signalMethod=|finished()
$signalMethod=|frameChanged(int)
$signalMethod=|stateChanged(QTimeLine::State)
$signalMethod=|valueChanged(qreal)

#pragma ENDDUMP
