%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

$prototype=virtual void setRootObject(QAccessibleInterface *) = 0
$virtualMethod=|void|setRootObject|QAccessibleInterface *

$prototype=virtual void notifyAccessibilityUpdate(QAccessibleEvent *event) = 0
$virtualMethod=|void|notifyAccessibilityUpdate|QAccessibleEvent *

$extraMethods

#pragma ENDDUMP
