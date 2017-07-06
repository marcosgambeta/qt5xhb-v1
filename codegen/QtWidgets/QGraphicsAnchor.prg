$header

#include "hbclass.ch"

CLASS QGraphicsAnchor INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD setSizePolicy
   METHOD setSpacing
   METHOD sizePolicy
   METHOD spacing
   METHOD unsetSpacing

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
void setSizePolicy(QSizePolicy::Policy policy)
*/
HB_FUNC_STATIC( QGRAPHICSANCHOR_SETSIZEPOLICY )
{
  QGraphicsAnchor * obj = (QGraphicsAnchor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSizePolicy ( (QSizePolicy::Policy) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSpacing(qreal spacing)
*/
HB_FUNC_STATIC( QGRAPHICSANCHOR_SETSPACING )
{
  QGraphicsAnchor * obj = (QGraphicsAnchor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSpacing ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSizePolicy::Policy sizePolicy() const
*/
HB_FUNC_STATIC( QGRAPHICSANCHOR_SIZEPOLICY )
{
  QGraphicsAnchor * obj = (QGraphicsAnchor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->sizePolicy () );
  }
}


/*
qreal spacing() const
*/
HB_FUNC_STATIC( QGRAPHICSANCHOR_SPACING )
{
  QGraphicsAnchor * obj = (QGraphicsAnchor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->spacing () );
  }
}


/*
void unsetSpacing()
*/
HB_FUNC_STATIC( QGRAPHICSANCHOR_UNSETSPACING )
{
  QGraphicsAnchor * obj = (QGraphicsAnchor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->unsetSpacing ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
