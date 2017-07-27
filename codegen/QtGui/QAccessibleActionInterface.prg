$header

#include "hbclass.ch"

CLASS QAccessibleActionInterface

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD actionNames
   METHOD localizedActionName
   METHOD localizedActionDescription
   METHOD doAction
   METHOD keyBindingsForAction
   METHOD pressAction
   METHOD increaseAction
   METHOD decreaseAction
   METHOD showMenuAction
   METHOD setFocusAction
   METHOD toggleAction

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
virtual QStringList actionNames() const = 0
*/
$method=|QStringList|actionNames|

/*
virtual QString localizedActionName(const QString &name) const
*/
$method=|QString|localizedActionName|const QString &

/*
virtual QString localizedActionDescription(const QString &name) const
*/
$method=|QString|localizedActionDescription|const QString &

/*
virtual void doAction(const QString &actionName) = 0
*/
$method=|void|doAction|const QString &

/*
virtual QStringList keyBindingsForAction(const QString &actionName) const = 0
*/
$method=|QStringList|keyBindingsForAction|const QString &

/*
static const QString &pressAction()
*/
$staticMethod=|const QString &|pressAction|

/*
static const QString &increaseAction()
*/
$staticMethod=|const QString &|increaseAction|

/*
static const QString &decreaseAction()
*/
$staticMethod=|const QString &|decreaseAction|

/*
static const QString &showMenuAction()
*/
$staticMethod=|const QString &|showMenuAction|

/*
static const QString &setFocusAction()
*/
$staticMethod=|const QString &|setFocusAction|

/*
static const QString &toggleAction()
*/
$staticMethod=|const QString &|toggleAction|

$extraMethods

#pragma ENDDUMP
