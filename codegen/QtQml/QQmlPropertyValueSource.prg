$header

#include "hbclass.ch"

CLASS QQmlPropertyValueSource

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD setTarget

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
virtual void setTarget(const QQmlProperty & property) = 0
*/
HB_FUNC_STATIC( QQMLPROPERTYVALUESOURCE_SETTARGET )
{
  QQmlPropertyValueSource * obj = (QQmlPropertyValueSource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTarget ( *PQQMLPROPERTY(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



$extraMethods

#pragma ENDDUMP
