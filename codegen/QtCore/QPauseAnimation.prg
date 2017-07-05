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
void QPauseAnimation_new1 ()
{
  QPauseAnimation * o = new QPauseAnimation ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QPauseAnimation ( int msecs, QObject * parent = 0 )
*/
void QPauseAnimation_new2 ()
{
  QPauseAnimation * o = new QPauseAnimation ( PINT(1), OPQOBJECT(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

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
HB_FUNC_STATIC( QPAUSEANIMATION_SETDURATION )
{
  QPauseAnimation * obj = (QPauseAnimation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setDuration ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual int duration () const
*/
HB_FUNC_STATIC( QPAUSEANIMATION_DURATION )
{
  QPauseAnimation * obj = (QPauseAnimation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->duration () );
  }
}

#pragma ENDDUMP
