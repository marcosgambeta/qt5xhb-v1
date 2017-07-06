$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
REQUEST QACCESSIBLEINTERFACE
#endif

CLASS QAccessibleEvent

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD type
   METHOD object
   METHOD setChild
   METHOD child
   METHOD accessibleInterface

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

/*
QAccessibleEvent(QObject *obj, QAccessible::Event typ)
*/
HB_FUNC_STATIC( QACCESSIBLEEVENT_NEW )
{
  QAccessibleEvent * o = new QAccessibleEvent ( PQOBJECT(1), (QAccessible::Event) hb_parni(2) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
QAccessible::Event type() const
*/
HB_FUNC_STATIC( QACCESSIBLEEVENT_TYPE )
{
  QAccessibleEvent * obj = (QAccessibleEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->type () );
  }
}


/*
QObject *object() const
*/
HB_FUNC_STATIC( QACCESSIBLEEVENT_OBJECT )
{
  QAccessibleEvent * obj = (QAccessibleEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * ptr = obj->object ();
    _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}


/*
void setChild(int chld)
*/
HB_FUNC_STATIC( QACCESSIBLEEVENT_SETCHILD )
{
  QAccessibleEvent * obj = (QAccessibleEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setChild ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int child() const
*/
HB_FUNC_STATIC( QACCESSIBLEEVENT_CHILD )
{
  QAccessibleEvent * obj = (QAccessibleEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->child () );
  }
}


/*
virtual QAccessibleInterface *accessibleInterface() const
*/
HB_FUNC_STATIC( QACCESSIBLEEVENT_ACCESSIBLEINTERFACE )
{
  QAccessibleEvent * obj = (QAccessibleEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAccessibleInterface * ptr = obj->accessibleInterface ();
    _qt5xhb_createReturnClass ( ptr, "QACCESSIBLEINTERFACE" );
  }
}

$extraMethods

#pragma ENDDUMP
