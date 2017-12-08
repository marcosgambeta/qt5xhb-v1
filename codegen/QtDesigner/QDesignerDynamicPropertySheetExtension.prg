$header

#include "hbclass.ch"

CLASS QDesignerDynamicPropertySheetExtension

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD addDynamicProperty
   METHOD canAddDynamicProperty
   METHOD dynamicPropertiesAllowed
   METHOD isDynamicProperty
   METHOD removeDynamicProperty

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

$prototype=virtual int addDynamicProperty ( const QString & propertyName, const QVariant & value ) = 0
$method=|int|addDynamicProperty|const QString &,const QVariant &

$prototype=virtual bool canAddDynamicProperty ( const QString & propertyName ) const = 0
$method=|bool|canAddDynamicProperty|const QString &

$prototype=virtual bool dynamicPropertiesAllowed () const = 0
$method=|bool|dynamicPropertiesAllowed|

$prototype=virtual bool isDynamicProperty ( int index ) const = 0
$method=|bool|isDynamicProperty|int

$prototype=virtual bool removeDynamicProperty ( int index ) = 0
$method=|bool|removeDynamicProperty|int

$extraMethods

#pragma ENDDUMP
