$header

#include "hbclass.ch"

CLASS QPauseAnimation INHERIT QAbstractAnimation

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD setDuration
   METHOD duration

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QPauseAnimation ( QObject * parent = 0 )
*/
$internalConstructor=|new1|QObject *=0

/*
QPauseAnimation ( int msecs, QObject * parent = 0 )
*/
$internalConstructor=|new2|int,QObject *=0

//[1]QPauseAnimation ( QObject * parent = 0 )
//[2]QPauseAnimation ( int msecs, QObject * parent = 0 )

HB_FUNC_STATIC( QPAUSEANIMATION_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QPauseAnimation_new1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTQOBJECT(2) )
  {
    QPauseAnimation_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void setDuration ( int msecs )
*/
$method=|void|setDuration|int

/*
virtual int duration () const
*/
$method=|int|duration|

#pragma ENDDUMP
