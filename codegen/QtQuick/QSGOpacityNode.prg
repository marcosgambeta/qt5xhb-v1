$header

#include "hbclass.ch"

CLASS QSGOpacityNode INHERIT QSGNode

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD opacity
   METHOD setOpacity

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QSGOpacityNode()
*/
HB_FUNC_STATIC( QSGOPACITYNODE_NEW )
{
  QSGOpacityNode * o = new QSGOpacityNode ();
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
qreal opacity() const
*/
HB_FUNC_STATIC( QSGOPACITYNODE_OPACITY )
{
  QSGOpacityNode * obj = (QSGOpacityNode *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->opacity () );
  }
}


/*
void setOpacity(qreal opacity)
*/
HB_FUNC_STATIC( QSGOPACITYNODE_SETOPACITY )
{
  QSGOpacityNode * obj = (QSGOpacityNode *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setOpacity ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
