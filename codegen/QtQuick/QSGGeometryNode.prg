$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSGMATERIAL
#endif

CLASS QSGGeometryNode INHERIT QSGBasicGeometryNode

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD material
   METHOD opaqueMaterial
   METHOD setMaterial
   METHOD setOpaqueMaterial

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QSGGeometryNode()
*/
HB_FUNC_STATIC( QSGGEOMETRYNODE_NEW )
{
  QSGGeometryNode * o = new QSGGeometryNode ();
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
QSGMaterial * material() const
*/
HB_FUNC_STATIC( QSGGEOMETRYNODE_MATERIAL )
{
  QSGGeometryNode * obj = (QSGGeometryNode *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSGMaterial * ptr = obj->material ();
    _qt5xhb_createReturnClass ( ptr, "QSGMATERIAL" );
  }
}


/*
QSGMaterial * opaqueMaterial() const
*/
HB_FUNC_STATIC( QSGGEOMETRYNODE_OPAQUEMATERIAL )
{
  QSGGeometryNode * obj = (QSGGeometryNode *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSGMaterial * ptr = obj->opaqueMaterial ();
    _qt5xhb_createReturnClass ( ptr, "QSGMATERIAL" );
  }
}


/*
void setMaterial(QSGMaterial * material)
*/
HB_FUNC_STATIC( QSGGEOMETRYNODE_SETMATERIAL )
{
  QSGGeometryNode * obj = (QSGGeometryNode *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSGMaterial * par1 = (QSGMaterial *) _qt5xhb_itemGetPtr(1);
    obj->setMaterial ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOpaqueMaterial(QSGMaterial * material)
*/
HB_FUNC_STATIC( QSGGEOMETRYNODE_SETOPAQUEMATERIAL )
{
  QSGGeometryNode * obj = (QSGGeometryNode *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSGMaterial * par1 = (QSGMaterial *) _qt5xhb_itemGetPtr(1);
    obj->setOpaqueMaterial ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
