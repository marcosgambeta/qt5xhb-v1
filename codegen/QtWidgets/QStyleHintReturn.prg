$header

#include "hbclass.ch"

CLASS QStyleHintReturn

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

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
QStyleHintReturn(int version = QStyleOption::Version, int type = SH_Default)
*/
HB_FUNC_STATIC( QSTYLEHINTRETURN_NEW )
{
  QStyleHintReturn * o = new QStyleHintReturn ( OPINT(1,QStyleOption::Version), OPINT(2,QStyleHintReturn::SH_Default) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

$extraMethods

#pragma ENDDUMP
