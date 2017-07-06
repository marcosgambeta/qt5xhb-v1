$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOPENGLSHADERPROGRAM
#endif

CLASS QSGMaterialShader

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD activate
   METHOD deactivate
   METHOD program

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual void activate()
*/
HB_FUNC_STATIC( QSGMATERIALSHADER_ACTIVATE )
{
  QSGMaterialShader * obj = (QSGMaterialShader *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->activate ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
virtual void deactivate()
*/
HB_FUNC_STATIC( QSGMATERIALSHADER_DEACTIVATE )
{
  QSGMaterialShader * obj = (QSGMaterialShader *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->deactivate ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QOpenGLShaderProgram * program()
*/
HB_FUNC_STATIC( QSGMATERIALSHADER_PROGRAM )
{
  QSGMaterialShader * obj = (QSGMaterialShader *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QOpenGLShaderProgram * ptr = obj->program ();
    _qt5xhb_createReturnClass ( ptr, "QOPENGLSHADERPROGRAM" );
  }
}




$extraMethods

#pragma ENDDUMP
