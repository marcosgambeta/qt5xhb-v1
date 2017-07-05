$header

#include "hbclass.ch"

CLASS QParallelAnimationGroup INHERIT QAnimationGroup

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD duration

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QParallelAnimationGroup ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QPARALLELANIMATIONGROUP_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QParallelAnimationGroup * o = new QParallelAnimationGroup ( OPQOBJECT(1,0) );
    _qt5xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
virtual int duration () const
*/
HB_FUNC_STATIC( QPARALLELANIMATIONGROUP_DURATION )
{
  QParallelAnimationGroup * obj = (QParallelAnimationGroup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->duration () );
  }
}

#pragma ENDDUMP
