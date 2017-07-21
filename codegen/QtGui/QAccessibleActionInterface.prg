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
HB_FUNC_STATIC( QACCESSIBLEACTIONINTERFACE_ACTIONNAMES )
{
  QAccessibleActionInterface * obj = (QAccessibleActionInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRINGLIST( obj->actionNames () );
  }
}

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
HB_FUNC_STATIC( QACCESSIBLEACTIONINTERFACE_PRESSACTION )
{
  QString str1 = QAccessibleActionInterface::pressAction ();
  hb_retc( (const char *) str1.toLatin1().data() );
}

/*
static const QString &increaseAction()
*/
HB_FUNC_STATIC( QACCESSIBLEACTIONINTERFACE_INCREASEACTION )
{
  QString str1 = QAccessibleActionInterface::increaseAction ();
  hb_retc( (const char *) str1.toLatin1().data() );
}

/*
static const QString &decreaseAction()
*/
HB_FUNC_STATIC( QACCESSIBLEACTIONINTERFACE_DECREASEACTION )
{
  QString str1 = QAccessibleActionInterface::decreaseAction ();
  hb_retc( (const char *) str1.toLatin1().data() );
}

/*
static const QString &showMenuAction()
*/
HB_FUNC_STATIC( QACCESSIBLEACTIONINTERFACE_SHOWMENUACTION )
{
  QString str1 = QAccessibleActionInterface::showMenuAction ();
  hb_retc( (const char *) str1.toLatin1().data() );
}

/*
static const QString &setFocusAction()
*/
HB_FUNC_STATIC( QACCESSIBLEACTIONINTERFACE_SETFOCUSACTION )
{
  QString str1 = QAccessibleActionInterface::setFocusAction ();
  hb_retc( (const char *) str1.toLatin1().data() );
}

/*
static const QString &toggleAction()
*/
HB_FUNC_STATIC( QACCESSIBLEACTIONINTERFACE_TOGGLEACTION )
{
  QString str1 = QAccessibleActionInterface::toggleAction ();
  hb_retc( (const char *) str1.toLatin1().data() );
}

$extraMethods

#pragma ENDDUMP
