$header

#include "hbclass.ch"

CLASS QBasicTimer

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isActive
   METHOD start
   METHOD stop
   METHOD timerId

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QBasicTimer ()
*/
HB_FUNC_STATIC( QBASICTIMER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QBasicTimer * o = new QBasicTimer ();
    _qt5xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool isActive () const
*/
$method=|bool|isActive|

/*
void start ( int msec, QObject * object )
*/
$method=|void|start|int,QObject *

/*
void stop ()
*/
$method=|void|stop|

/*
int timerId () const
*/
$method=|int|timerId|

$extraMethods

#pragma ENDDUMP
