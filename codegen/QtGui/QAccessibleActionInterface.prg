%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

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

$prototype=virtual QStringList actionNames() const = 0
$virtualMethod=|QStringList|actionNames|

$prototype=virtual QString localizedActionName(const QString &name) const
$virtualMethod=|QString|localizedActionName|const QString &

$prototype=virtual QString localizedActionDescription(const QString &name) const
$virtualMethod=|QString|localizedActionDescription|const QString &

$prototype=virtual void doAction(const QString &actionName) = 0
$virtualMethod=|void|doAction|const QString &

$prototype=virtual QStringList keyBindingsForAction(const QString &actionName) const = 0
$virtualMethod=|QStringList|keyBindingsForAction|const QString &

$prototype=static const QString &pressAction()
$staticMethod=|const QString &|pressAction|

$prototype=static const QString &increaseAction()
$staticMethod=|const QString &|increaseAction|

$prototype=static const QString &decreaseAction()
$staticMethod=|const QString &|decreaseAction|

$prototype=static const QString &showMenuAction()
$staticMethod=|const QString &|showMenuAction|

$prototype=static const QString &setFocusAction()
$staticMethod=|const QString &|setFocusAction|

$prototype=static const QString &toggleAction()
$staticMethod=|const QString &|toggleAction|

$extraMethods

#pragma ENDDUMP
