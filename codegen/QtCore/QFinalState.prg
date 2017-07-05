$header

#include "hbclass.ch"

CLASS QFinalState INHERIT QAbstractState

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QFinalState(QState * parent = 0)
*/
HB_FUNC_STATIC( QFINALSTATE_NEW )
{
  if( ISBETWEEN(0,1) && (ISQSTATE(1)||ISNIL(1)) )
  {
    QState * par1 = ISNIL(1)? 0 : (QState *) _qt5xhb_itemGetPtr(1);
    QFinalState * o = new QFinalState ( par1 );
    _qt5xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

#pragma ENDDUMP
