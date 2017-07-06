$header

#include "hbclass.ch"

CLASS QWhatsThisClickedEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD href

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QWhatsThisClickedEvent(const QString &href)
*/
HB_FUNC_STATIC( QWHATSTHISCLICKEDEVENT_NEW )
{
  QWhatsThisClickedEvent * o = new QWhatsThisClickedEvent ( PQSTRING(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
QString href() const
*/
HB_FUNC_STATIC( QWHATSTHISCLICKEDEVENT_HREF )
{
  QWhatsThisClickedEvent * obj = (QWhatsThisClickedEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->href () );
  }
}

#pragma ENDDUMP
