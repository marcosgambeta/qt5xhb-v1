$header

#include "hbclass.ch"

CLASS QGraphicsTransform INHERIT QObject

   METHOD delete
   METHOD applyTo

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual void applyTo ( QMatrix4x4 * matrix ) const = 0
*/
HB_FUNC_STATIC( QGRAPHICSTRANSFORM_APPLYTO )
{
  QGraphicsTransform * obj = (QGraphicsTransform *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->applyTo ( PQMATRIX4X4(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
