$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QAbstractExtensionFactory

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD extension

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
virtual QObject * extension ( QObject * object, const QString & iid ) const = 0
*/
$method=|QObject *|extension|QObject *,const QString &

$extraMethods

#pragma ENDDUMP
