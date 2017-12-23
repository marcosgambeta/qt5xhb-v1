$header

#include "hbclass.ch"

CLASS QMediaServiceSupportedFormatsInterface

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD hasSupport
   METHOD supportedMimeTypes

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

$prototype=virtual QMultimedia::SupportEstimate hasSupport(const QString & mimeType, const QStringList & codecs) const = 0
$virtualMethod=|QMultimedia::SupportEstimate|hasSupport|const QString &,const QStringList &

$prototype=virtual QStringList supportedMimeTypes() const = 0
$virtualMethod=|QStringList|supportedMimeTypes|

$extraMethods

#pragma ENDDUMP
