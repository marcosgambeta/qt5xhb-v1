$header

#include "hbclass.ch"

CLASS QTimeLine INHERIT QObject

   DATA self_destruction INIT .F.

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

/*
QTimeLine ( int duration = 1000, QObject * parent = 0 )
*/
$constructor=|new|int=1000,QObject *=0

$deleteMethod

/*
int currentFrame () const
*/
$method=|int|currentFrame|

/*
int currentTime () const
*/
$method=|int|currentTime|

/*
qreal currentValue () const
*/
$method=|qreal|currentValue|

/*
CurveShape curveShape () const
*/
$method=|QTimeLine::CurveShape|curveShape|

/*
Direction direction () const
*/
$method=|QTimeLine::Direction|direction|

/*
int duration () const
*/
$method=|int|duration|

/*
int endFrame () const
*/
$method=|int|endFrame|

/*
int frameForTime ( int msec ) const
*/
$method=|int|frameForTime|int

/*
int loopCount () const
*/
$method=|int|loopCount|

/*
void setCurveShape ( CurveShape shape )
*/
$method=|void|setCurveShape|QTimeLine::CurveShape

/*
void setDirection ( Direction direction )
*/
$method=|void|setDirection|QTimeLine::Direction

/*
void setDuration ( int duration )
*/
$method=|void|setDuration|int

/*
void setEasingCurve ( const QEasingCurve & curve )
*/
$method=|void|setEasingCurve|const QEasingCurve &

/*
void setEndFrame ( int frame )
*/
$method=|void|setEndFrame|int

/*
void setFrameRange ( int startFrame, int endFrame )
*/
$method=|void|setFrameRange|int,int

/*
void setLoopCount ( int count )
*/
$method=|void|setLoopCount|int

/*
void setStartFrame ( int frame )
*/
$method=|void|setStartFrame|int

/*
void setUpdateInterval ( int interval )
*/
$method=|void|setUpdateInterval|int

/*
int startFrame () const
*/
$method=|int|startFrame|

/*
State state () const
*/
$method=|QTimeLine::State|state|

/*
int updateInterval () const
*/
$method=|int|updateInterval|

/*
virtual qreal valueForTime ( int msec ) const
*/
$method=|qreal|valueForTime|int

/*
void resume ()
*/
$method=|void|resume|

/*
void setCurrentTime ( int msec )
*/
$method=|void|setCurrentTime|int

/*
void setPaused ( bool paused )
*/
$method=|void|setPaused|bool

/*
void start ()
*/
$method=|void|start|

/*
void stop ()
*/
$method=|void|stop|

/*
void toggleDirection ()
*/
$method=|void|toggleDirection|

#pragma ENDDUMP
