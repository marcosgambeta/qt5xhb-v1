%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
REQUEST QACCESSIBLEINTERFACE
#endif

$beginClass

   METHOD new
   METHOD delete
   METHOD type
   METHOD object
   METHOD setChild
   METHOD child
   METHOD accessibleInterface

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
