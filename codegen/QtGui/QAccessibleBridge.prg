$header

#include "hbclass.ch"

CLASS QAccessibleBridge

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD setRootObject
   METHOD notifyAccessibilityUpdate

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
virtual void setRootObject(QAccessibleInterface *) = 0
*/
HB_FUNC_STATIC( QACCESSIBLEBRIDGE_SETROOTOBJECT )
{
  QAccessibleBridge * obj = (QAccessibleBridge *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAccessibleInterface * par1 = (QAccessibleInterface *) _qt5xhb_itemGetPtr(1);
    obj->setRootObject ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void notifyAccessibilityUpdate(QAccessibleEvent *event) = 0
*/
HB_FUNC_STATIC( QACCESSIBLEBRIDGE_NOTIFYACCESSIBILITYUPDATE )
{
  QAccessibleBridge * obj = (QAccessibleBridge *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAccessibleEvent * par1 = (QAccessibleEvent *) _qt5xhb_itemGetPtr(1);
    obj->notifyAccessibilityUpdate ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP
