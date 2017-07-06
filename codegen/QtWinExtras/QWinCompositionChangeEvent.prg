$header

#include "hbclass.ch"

CLASS QWinCompositionChangeEvent INHERIT QWinEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isCompositionEnabled

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,2,0

/*
explicit QWinCompositionChangeEvent(bool enabled)
*/
HB_FUNC_STATIC( QWINCOMPOSITIONCHANGEEVENT_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  bool par1 = hb_parl(1);
  QWinCompositionChangeEvent * o = new QWinCompositionChangeEvent ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

$deleteMethod=5,2,0

/*
bool isCompositionEnabled() const
*/
HB_FUNC_STATIC( QWINCOMPOSITIONCHANGEEVENT_ISCOMPOSITIONENABLED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinCompositionChangeEvent * obj = (QWinCompositionChangeEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isCompositionEnabled () );
  }
#endif
}



#pragma ENDDUMP
