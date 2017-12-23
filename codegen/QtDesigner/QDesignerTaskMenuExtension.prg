$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACTION
#endif

CLASS QDesignerTaskMenuExtension

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD preferredEditAction
   METHOD taskActions

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

$prototype=virtual QAction * preferredEditAction () const
$virtualMethod=|QAction *|preferredEditAction|

$prototype=virtual QList<QAction *> taskActions () const = 0
$virtualMethod=|QList<QAction *>|taskActions|

$extraMethods

#pragma ENDDUMP
