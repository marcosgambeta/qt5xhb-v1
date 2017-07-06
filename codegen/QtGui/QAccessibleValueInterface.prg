$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QAccessibleValueInterface

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD currentValue
   METHOD setCurrentValue
   METHOD maximumValue
   METHOD minimumValue
   METHOD minimumStepSize

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
virtual QVariant currentValue() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLEVALUEINTERFACE_CURRENTVALUE )
{
  QAccessibleValueInterface * obj = (QAccessibleValueInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->currentValue () );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
virtual void setCurrentValue(const QVariant &value) = 0
*/
HB_FUNC_STATIC( QACCESSIBLEVALUEINTERFACE_SETCURRENTVALUE )
{
  QAccessibleValueInterface * obj = (QAccessibleValueInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCurrentValue ( *PQVARIANT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QVariant maximumValue() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLEVALUEINTERFACE_MAXIMUMVALUE )
{
  QAccessibleValueInterface * obj = (QAccessibleValueInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->maximumValue () );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
virtual QVariant minimumValue() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLEVALUEINTERFACE_MINIMUMVALUE )
{
  QAccessibleValueInterface * obj = (QAccessibleValueInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->minimumValue () );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
virtual QVariant minimumStepSize() const = 0
*/
HB_FUNC_STATIC( QACCESSIBLEVALUEINTERFACE_MINIMUMSTEPSIZE )
{
  QAccessibleValueInterface * obj = (QAccessibleValueInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->minimumStepSize () );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

$extraMethods

#pragma ENDDUMP
