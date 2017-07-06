$header

#include "hbclass.ch"

CLASS QToolBarChangeEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD toggle

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QToolBarChangeEvent(bool t)
*/
HB_FUNC_STATIC( QTOOLBARCHANGEEVENT_NEW )
{
  bool par1 = hb_parl(1);
  QToolBarChangeEvent * o = new QToolBarChangeEvent ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
bool toggle() const
*/
HB_FUNC_STATIC( QTOOLBARCHANGEEVENT_TOGGLE )
{
  QToolBarChangeEvent * obj = (QToolBarChangeEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->toggle () );
  }
}



#pragma ENDDUMP
