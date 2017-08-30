$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDESIGNERCUSTOMWIDGETINTERFACE
#endif

CLASS QDesignerCustomWidgetCollectionInterface

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD customWidgets

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
virtual QList<QDesignerCustomWidgetInterface *> customWidgets () const = 0
*/
$virtualMethod=|QList<QDesignerCustomWidgetInterface *>|customWidgets|

$extraMethods

#pragma ENDDUMP
