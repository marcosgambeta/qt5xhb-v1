$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSGGEOMETRY
#endif

CLASS QSGBasicGeometryNode INHERIT QSGNode

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD geometry
   METHOD setGeometry

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
QSGGeometry * geometry()
*/
HB_FUNC_STATIC( QSGBASICGEOMETRYNODE_GEOMETRY )
{
  QSGBasicGeometryNode * obj = (QSGBasicGeometryNode *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSGGeometry * ptr = obj->geometry ();
    _qt5xhb_createReturnClass ( ptr, "QSGGEOMETRY" );
  }
}


/*
void setGeometry(QSGGeometry * geometry)
*/
HB_FUNC_STATIC( QSGBASICGEOMETRYNODE_SETGEOMETRY )
{
  QSGBasicGeometryNode * obj = (QSGBasicGeometryNode *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSGGeometry * par1 = (QSGGeometry *) _qt5xhb_itemGetPtr(1);
    obj->setGeometry ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
