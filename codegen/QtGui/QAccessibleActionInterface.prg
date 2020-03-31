%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

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
%% TODO: $staticMethod=|const QString &|pressAction|

$prototype=static const QString &increaseAction()
%% TODO: $staticMethod=|const QString &|increaseAction|

$prototype=static const QString &decreaseAction()
%% TODO: $staticMethod=|const QString &|decreaseAction|

$prototype=static const QString &showMenuAction()
%% TODO: $staticMethod=|const QString &|showMenuAction|

$prototype=static const QString &setFocusAction()
%% TODO: $staticMethod=|const QString &|setFocusAction|

$prototype=static const QString &toggleAction()
%% TODO: $staticMethod=|const QString &|toggleAction|

$extraMethods

#pragma ENDDUMP
