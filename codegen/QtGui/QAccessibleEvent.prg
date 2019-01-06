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

$prototype=QAccessibleEvent(QObject *obj, QAccessible::Event typ)
$constructor=|new|QObject *,QAccessible::Event

$deleteMethod

$prototype=QAccessible::Event type() const
$method=|QAccessible::Event|type|

$prototype=QObject *object() const
$method=|QObject *|object|

$prototype=void setChild(int chld)
$method=|void|setChild|int

$prototype=int child() const
$method=|int|child|

$prototype=virtual QAccessibleInterface *accessibleInterface() const
$virtualMethod=|QAccessibleInterface *|accessibleInterface|

$extraMethods

#pragma ENDDUMP
