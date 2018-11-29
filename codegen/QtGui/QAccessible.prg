%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=static QAccessibleInterface *queryAccessibleInterface(QObject *)
$staticMethod=|QAccessibleInterface *|queryAccessibleInterface|QObject *

$prototype=static void updateAccessibility(QAccessibleEvent *event)
$staticMethod=|void|updateAccessibility|QAccessibleEvent *

$prototype=static bool isActive()
$staticMethod=|bool|isActive|

$prototype=static void setRootObject(QObject *object)
$staticMethod=|void|setRootObject|QObject *

$prototype=static void cleanup()
$staticMethod=|void|cleanup|

#pragma ENDDUMP
