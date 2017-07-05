$header

#include "hbclass.ch"

CLASS QTimerEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD timerId

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QTimerEvent(int timerId)
*/
HB_FUNC_STATIC( QTIMEREVENT_NEW )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QTimerEvent * o = new QTimerEvent ( PINT(1) );
    _qt5xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
int timerId() const
*/
HB_FUNC_STATIC( QTIMEREVENT_TIMERID )
{
  QTimerEvent * obj = (QTimerEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->timerId () );
  }
}

#pragma ENDDUMP
