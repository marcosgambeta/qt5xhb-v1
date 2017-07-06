$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSGMATERIALSHADER
REQUEST QSGMATERIALTYPE
#endif

CLASS QSGMaterial

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD compare
   METHOD createShader
   METHOD flags
   METHOD setFlag
   METHOD type

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
virtual int compare(const QSGMaterial * other) const
*/
HB_FUNC_STATIC( QSGMATERIAL_COMPARE )
{
  QSGMaterial * obj = (QSGMaterial *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QSGMaterial * par1 = (const QSGMaterial *) _qt5xhb_itemGetPtr(1);
    RINT( obj->compare ( par1 ) );
  }
}


/*
virtual QSGMaterialShader * createShader() const = 0
*/
HB_FUNC_STATIC( QSGMATERIAL_CREATESHADER )
{
  QSGMaterial * obj = (QSGMaterial *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSGMaterialShader * ptr = obj->createShader ();
    _qt5xhb_createReturnClass ( ptr, "QSGMATERIALSHADER" );
  }
}


/*
QSGMaterial::Flags flags() const
*/
HB_FUNC_STATIC( QSGMATERIAL_FLAGS )
{
  QSGMaterial * obj = (QSGMaterial *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->flags () );
  }
}


/*
void setFlag(Flags flags, bool on = true)
*/
HB_FUNC_STATIC( QSGMATERIAL_SETFLAG )
{
  QSGMaterial * obj = (QSGMaterial *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFlag ( (QSGMaterial::Flags) par1, OPBOOL(2,true) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QSGMaterialType * type() const = 0
*/
HB_FUNC_STATIC( QSGMATERIAL_TYPE )
{
  QSGMaterial * obj = (QSGMaterial *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSGMaterialType * ptr = obj->type ();
    _qt5xhb_createReturnClass ( ptr, "QSGMATERIALTYPE" );
  }
}



$extraMethods

#pragma ENDDUMP
