$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QAbstractExtensionManager

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD extension
   METHOD registerExtensions
   METHOD unregisterExtensions

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

$prototype=virtual QObject * extension ( QObject * object, const QString & iid ) const = 0
$method=|QObject *|extension|QObject *,const QString &

$prototype=virtual void registerExtensions ( QAbstractExtensionFactory * factory, const QString & iid ) = 0
$method=|void|registerExtensions|QAbstractExtensionFactory *,const QString &

$prototype=virtual void unregisterExtensions ( QAbstractExtensionFactory * factory, const QString & iid ) = 0
$method=|void|unregisterExtensions|QAbstractExtensionFactory *,const QString &

$extraMethods

#pragma ENDDUMP
