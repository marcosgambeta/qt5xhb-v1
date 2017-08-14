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
$method=|QMediaServiceProviderHint::Features|supportedFeatures|const QByteArray &

$extraMethods

#pragma ENDDUMP
