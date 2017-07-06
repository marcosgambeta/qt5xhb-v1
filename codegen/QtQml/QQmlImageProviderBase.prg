$header

#include "hbclass.ch"

CLASS QQmlImageProviderBase

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD flags
   METHOD imageType

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
virtual Flags flags() const = 0
*/
HB_FUNC_STATIC( QQMLIMAGEPROVIDERBASE_FLAGS )
{
  QQmlImageProviderBase * obj = (QQmlImageProviderBase *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->flags () );
  }
}


/*
virtual ImageType imageType() const = 0
*/
HB_FUNC_STATIC( QQMLIMAGEPROVIDERBASE_IMAGETYPE )
{
  QQmlImageProviderBase * obj = (QQmlImageProviderBase *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->imageType () );
  }
}



$extraMethods

#pragma ENDDUMP
