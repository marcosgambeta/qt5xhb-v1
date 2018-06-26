%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

   METHOD delete
   METHOD setRootObject
   METHOD notifyAccessibilityUpdate

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual void setRootObject(QAccessibleInterface *) = 0
$virtualMethod=|void|setRootObject|QAccessibleInterface *

$prototype=virtual void notifyAccessibilityUpdate(QAccessibleEvent *event) = 0
$virtualMethod=|void|notifyAccessibilityUpdate|QAccessibleEvent *

$extraMethods

#pragma ENDDUMP
