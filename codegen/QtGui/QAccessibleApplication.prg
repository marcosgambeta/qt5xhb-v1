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

$beginClassFrom=QAccessibleObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QWindow>

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
