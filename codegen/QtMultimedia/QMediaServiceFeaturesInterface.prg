$header

#include "hbclass.ch"

CLASS QMediaServiceFeaturesInterface

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD supportedFeatures

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
virtual QMediaServiceProviderHint::Features supportedFeatures(const QByteArray & service) const = 0
*/
HB_FUNC_STATIC( QMEDIASERVICEFEATURESINTERFACE_SUPPORTEDFEATURES )
{
  QMediaServiceFeaturesInterface * obj = (QMediaServiceFeaturesInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->supportedFeatures ( *PQBYTEARRAY(1) ) );
  }
}



$extraMethods

#pragma ENDDUMP
