$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACCESSIBLEINTERFACE
#endif

CLASS QAccessible INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD queryAccessibleInterface
   METHOD updateAccessibility
   METHOD isActive
   METHOD setRootObject
   METHOD cleanup

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
static QAccessibleInterface *queryAccessibleInterface(QObject *)
*/
HB_FUNC_STATIC( QACCESSIBLE_QUERYACCESSIBLEINTERFACE )
{
  QAccessibleInterface * ptr = QAccessible::queryAccessibleInterface ( PQOBJECT(1) );
  _qt5xhb_createReturnClass ( ptr, "QACCESSIBLEINTERFACE" );
}

/*
static void updateAccessibility(QAccessibleEvent *event)
*/
HB_FUNC_STATIC( QACCESSIBLE_UPDATEACCESSIBILITY )
{
  QAccessibleEvent * par1 = (QAccessibleEvent *) _qt5xhb_itemGetPtr(1);
  QAccessible::updateAccessibility ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
static bool isActive()
*/
HB_FUNC_STATIC( QACCESSIBLE_ISACTIVE )
{
  RBOOL( QAccessible::isActive () );
}

/*
static void setRootObject(QObject *object)
*/
HB_FUNC_STATIC( QACCESSIBLE_SETROOTOBJECT )
{
  QAccessible::setRootObject ( PQOBJECT(1) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void cleanup()
*/
HB_FUNC_STATIC( QACCESSIBLE_CLEANUP )
{
  QAccessible::cleanup ();
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
