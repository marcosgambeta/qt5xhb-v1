$header

#include "hbclass.ch"

CLASS QDebugStateSaver

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
QDebugStateSaver(QDebug &dbg)
*/
HB_FUNC_STATIC( QDEBUGSTATESAVER_NEW )
{
  if( ISNUMPAR(1) && ISQDEBUG(1) )
  {
    QDebug  * par1 = (QDebug  *) _qt5xhb_itemGetPtr(1);
    QDebugStateSaver * o = new QDebugStateSaver ( *par1 );
    _qt5xhb_storePointerAndFlag( o, true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$extraMethods

#pragma ENDDUMP
