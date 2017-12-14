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

$prototype=virtual Flags flags() const = 0
$virtualMethod=|QQmlImageProviderBase::Flags|flags|

$prototype=virtual ImageType imageType() const = 0
$virtualMethod=|QQmlImageProviderBase::ImageType|imageType|

$extraMethods

#pragma ENDDUMP
