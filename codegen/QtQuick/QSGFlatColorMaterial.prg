$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCOLOR
#endif

CLASS QSGFlatColorMaterial INHERIT QSGMaterial

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD color
   METHOD setColor

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QSGFlatColorMaterial()
*/
HB_FUNC_STATIC( QSGFLATCOLORMATERIAL_NEW )
{
  QSGFlatColorMaterial * o = new QSGFlatColorMaterial ();
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
const QColor & color() const
*/
HB_FUNC_STATIC( QSGFLATCOLORMATERIAL_COLOR )
{
  QSGFlatColorMaterial * obj = (QSGFlatColorMaterial *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QColor * ptr = &obj->color ();
    _qt5xhb_createReturnClass ( ptr, "QCOLOR" );
  }
}


/*
void setColor(const QColor & color)
*/
HB_FUNC_STATIC( QSGFLATCOLORMATERIAL_SETCOLOR )
{
  QSGFlatColorMaterial * obj = (QSGFlatColorMaterial *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor par1 = ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1));
    obj->setColor ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
