$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPAUSEANIMATION
REQUEST QABSTRACTANIMATION
#endif

CLASS QSequentialAnimationGroup INHERIT QAnimationGroup

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addPause
   METHOD currentAnimation
   METHOD insertPause
   METHOD duration

   METHOD onCurrentAnimationChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QSequentialAnimationGroup ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QSEQUENTIALANIMATIONGROUP_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QSequentialAnimationGroup * o = new QSequentialAnimationGroup ( OPQOBJECT(1,0) );
    _qt5xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QPauseAnimation * addPause ( int msecs )
*/
HB_FUNC_STATIC( QSEQUENTIALANIMATIONGROUP_ADDPAUSE )
{
  QSequentialAnimationGroup * obj = (QSequentialAnimationGroup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QPauseAnimation * ptr = obj->addPause ( PINT(1) );
      _qt5xhb_createReturnClass ( ptr, "QPAUSEANIMATION" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QAbstractAnimation * currentAnimation () const
*/
HB_FUNC_STATIC( QSEQUENTIALANIMATIONGROUP_CURRENTANIMATION )
{
  QSequentialAnimationGroup * obj = (QSequentialAnimationGroup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAbstractAnimation * ptr = obj->currentAnimation ();
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTANIMATION" );
  }
}

/*
QPauseAnimation * insertPause ( int index, int msecs )
*/
HB_FUNC_STATIC( QSEQUENTIALANIMATIONGROUP_INSERTPAUSE )
{
  QSequentialAnimationGroup * obj = (QSequentialAnimationGroup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      QPauseAnimation * ptr = obj->insertPause ( PINT(1), PINT(2) );
      _qt5xhb_createReturnClass ( ptr, "QPAUSEANIMATION" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual int duration () const
*/
HB_FUNC_STATIC( QSEQUENTIALANIMATIONGROUP_DURATION )
{
  QSequentialAnimationGroup * obj = (QSequentialAnimationGroup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->duration () );
  }
}

#pragma ENDDUMP
