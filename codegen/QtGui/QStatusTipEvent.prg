$header

#include "hbclass.ch"

CLASS QStatusTipEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD tip

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QStatusTipEvent(const QString &tip)
*/
HB_FUNC_STATIC( QSTATUSTIPEVENT_NEW )
{
  QStatusTipEvent * o = new QStatusTipEvent ( PQSTRING(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
QString tip() const
*/
HB_FUNC_STATIC( QSTATUSTIPEVENT_TIP )
{
  QStatusTipEvent * obj = (QStatusTipEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->tip () );
  }
}

#pragma ENDDUMP
