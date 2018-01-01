%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWINDOW
REQUEST QACCESSIBLEINTERFACE
#endif

CLASS QAccessibleApplication INHERIT QAccessibleObject

   METHOD new
   METHOD window
   METHOD childCount
   METHOD indexOfChild
   METHOD focusChild
   METHOD parent
   METHOD child
   METHOD text
   METHOD role

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAccessibleApplication()
$constructor=|new|

$prototype=QWindow *window() const
$method=|QWindow *|window|

$prototype=int childCount() const
$method=|int|childCount|

$prototype=int indexOfChild(const QAccessibleInterface*) const
$method=|int|indexOfChild|const QAccessibleInterface *

$prototype=QAccessibleInterface *focusChild() const
$method=|QAccessibleInterface *|focusChild|

$prototype=QAccessibleInterface *parent() const
$method=|QAccessibleInterface *|parent|

$prototype=QAccessibleInterface *child(int index) const
$method=|QAccessibleInterface *|child|int

$prototype=QString text(QAccessible::Text t) const
$method=|QString|text|QAccessible::Text

$prototype=QAccessible::Role role() const
$method=|QAccessible::Role|role|

#pragma ENDDUMP
