$header

#include "hbclass.ch"

CLASS QFocusEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD gotFocus
   METHOD lostFocus
   METHOD reason

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QFocusEvent ( Type type, Qt::FocusReason reason = Qt::OtherFocusReason )
*/
HB_FUNC_STATIC( QFOCUSEVENT_NEW )
{
  int par2 = ISNIL(2)? (int) Qt::OtherFocusReason : hb_parni(2);
  QFocusEvent * o = new QFocusEvent ( (QEvent::Type) hb_parni(1), (Qt::FocusReason) par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
bool gotFocus () const
*/
HB_FUNC_STATIC( QFOCUSEVENT_GOTFOCUS )
{
  QFocusEvent * obj = (QFocusEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->gotFocus () );
  }
}


/*
bool lostFocus () const
*/
HB_FUNC_STATIC( QFOCUSEVENT_LOSTFOCUS )
{
  QFocusEvent * obj = (QFocusEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->lostFocus () );
  }
}


/*
Qt::FocusReason reason () const
*/
HB_FUNC_STATIC( QFOCUSEVENT_REASON )
{
  QFocusEvent * obj = (QFocusEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->reason () );
  }
}



#pragma ENDDUMP
