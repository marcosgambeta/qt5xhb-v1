$header

#include "hbclass.ch"

CLASS QSGDynamicTexture INHERIT QSGTexture

   DATA self_destruction INIT .F.

   METHOD updateTexture

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
virtual bool updateTexture() = 0
*/
HB_FUNC_STATIC( QSGDYNAMICTEXTURE_UPDATETEXTURE )
{
  QSGDynamicTexture * obj = (QSGDynamicTexture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->updateTexture () );
  }
}



#pragma ENDDUMP
