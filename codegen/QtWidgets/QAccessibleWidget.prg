%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAccessibleObject,QAccessibleActionInterface

   METHOD new
   METHOD isValid
   METHOD window
   METHOD childCount
   METHOD indexOfChild
   METHOD focusChild
   METHOD rect
   METHOD parent
   METHOD child
   METHOD text
   METHOD role
   METHOD foregroundColor
   METHOD backgroundColor
   METHOD interface_cast
   METHOD actionNames
   METHOD doAction
   METHOD keyBindingsForAction

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QWindow>

$prototype=QAccessibleWidget(QWidget *o, QAccessible::Role r = QAccessible::Client, const QString& name = QString())
$constructor=|new|QWidget *,QAccessible::Role=QAccessible::Client,const QString &=QString()

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=QWindow *window() const
$method=|QWindow *|window|

$prototype=int childCount() const
$method=|int|childCount|

$prototype=int indexOfChild(const QAccessibleInterface *child) const
$method=|int|indexOfChild|const QAccessibleInterface *

$prototype=QAccessibleInterface *focusChild() const
$method=|QAccessibleInterface *|focusChild|

$prototype=QRect rect() const
$method=|QRect|rect|

$prototype=QAccessibleInterface *parent() const
$method=|QAccessibleInterface *|parent|

$prototype=QAccessibleInterface *child(int index) const
$method=|QAccessibleInterface *|child|int

$prototype=QString text(QAccessible::Text t) const
$method=|QString|text|QAccessible::Text

$prototype=QAccessible::Role role() const
$method=|QAccessible::Role|role|

$prototype=QColor foregroundColor() const
$method=|QColor|foregroundColor|

$prototype=QColor backgroundColor() const
$method=|QColor|backgroundColor|

$prototype=void *interface_cast(QAccessible::InterfaceType t)
$method=|void *|interface_cast|QAccessible::InterfaceType

$prototype=QStringList actionNames() const
$method=|QStringList|actionNames|

$prototype=void doAction(const QString &actionName)
$method=|void|doAction|const QString &

$prototype=QStringList keyBindingsForAction(const QString &actionName) const
$method=|QStringList|keyBindingsForAction|const QString &

#pragma ENDDUMP
