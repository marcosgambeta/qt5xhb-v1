$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTANIMATION
#endif

CLASS QAnimationGroup INHERIT QAbstractAnimation

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD addAnimation
   METHOD animationAt
   METHOD animationCount
   METHOD clear
   METHOD indexOfAnimation
   METHOD insertAnimation
   METHOD removeAnimation
   METHOD takeAnimation

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
void addAnimation ( QAbstractAnimation * animation )
*/
$method=|void|addAnimation|QAbstractAnimation *

/*
QAbstractAnimation * animationAt ( int index ) const
*/
HB_FUNC_STATIC( QANIMATIONGROUP_ANIMATIONAT )
{
  QAnimationGroup * obj = (QAnimationGroup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QAbstractAnimation * ptr = obj->animationAt ( PINT(1) );
      _qt5xhb_createReturnClass ( ptr, "QABSTRACTANIMATION" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int animationCount () const
*/
$method=|int|animationCount|

/*
void clear ()
*/
$method=|void|clear|

/*
int indexOfAnimation ( QAbstractAnimation * animation ) const
*/
$method=|int|indexOfAnimation|QAbstractAnimation *

/*
void insertAnimation ( int index, QAbstractAnimation * animation )
*/
$method=|void|insertAnimation|int,QAbstractAnimation *

/*
void removeAnimation ( QAbstractAnimation * animation )
*/
$method=|void|removeAnimation|QAbstractAnimation *

/*
QAbstractAnimation * takeAnimation ( int index )
*/
HB_FUNC_STATIC( QANIMATIONGROUP_TAKEANIMATION )
{
  QAnimationGroup * obj = (QAnimationGroup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QAbstractAnimation * ptr = obj->takeAnimation ( PINT(1) );
      _qt5xhb_createReturnClass ( ptr, "QABSTRACTANIMATION" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

#pragma ENDDUMP
