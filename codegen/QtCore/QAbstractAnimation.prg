$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QANIMATIONGROUP
#endif

CLASS QAbstractAnimation INHERIT QObject

   DATA self_destruction INIT .F.

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

/*
int currentLoop () const
*/
$method=|int|currentLoop|

/*
int currentLoopTime () const
*/
$method=|int|currentLoopTime|

/*
int currentTime () const
*/
$method=|int|currentTime|

/*
void setCurrentTime ( int msecs )
*/
$method=|void|setCurrentTime|int

/*
Direction direction () const
*/
$method=|QAbstractAnimation::Direction|direction|

/*
void  setDirection ( Direction direction )
*/
$method=|void|setDirection|QAbstractAnimation::Direction

/*
virtual int duration () const = 0
*/
$method=|int|duration|

/*
QAnimationGroup * group () const
*/
HB_FUNC_STATIC( QABSTRACTANIMATION_GROUP )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAnimationGroup * ptr = obj->group ();
    _qt5xhb_createReturnClass ( ptr, "QANIMATIONGROUP" );
  }
}

/*
int loopCount () const
*/
$method=|int|loopCount|

/*
void setLoopCount ( int loopCount )
*/
$method=|void|setLoopCount|int

/*
State state () const
*/
$method=|QAbstractAnimation::State|state|

/*
int totalDuration () const
*/
$method=|int|totalDuration|

/*
void pause ()
*/
$method=|void|pause|

/*
void resume ()
*/
$method=|void|resume|

/*
void setPaused ( bool paused )
*/
$method=|void|setPaused|bool

/*
void start ( QAbstractAnimation::DeletionPolicy policy = KeepWhenStopped )
*/
HB_FUNC_STATIC( QABSTRACTANIMATION_START )
{
  QAbstractAnimation * obj = (QAbstractAnimation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTNUM(1) )
    {
      obj->start ( ISNIL(1)? QAbstractAnimation::KeepWhenStopped : (QAbstractAnimation::DeletionPolicy) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void stop ()
*/
$method=|void|stop|

#pragma ENDDUMP
