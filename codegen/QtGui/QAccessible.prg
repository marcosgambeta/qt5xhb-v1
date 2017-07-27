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
$staticMethod=|QAccessibleInterface *|queryAccessibleInterface|QObject *

/*
static void updateAccessibility(QAccessibleEvent *event)
*/
$staticMethod=|void|updateAccessibility|QAccessibleEvent *

/*
static bool isActive()
*/
$staticMethod=|bool|isActive|

/*
static void setRootObject(QObject *object)
*/
$staticMethod=|void|setRootObject|QObject *

/*
static void cleanup()
*/
$staticMethod=|void|cleanup|

#pragma ENDDUMP
