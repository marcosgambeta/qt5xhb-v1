$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWINDOW
REQUEST QACCESSIBLEINTERFACE
REQUEST QRECT
REQUEST QCOLOR
#endif

CLASS QAccessibleWidget INHERIT QAccessibleObject,QAccessibleActionInterface

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

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QAccessibleWidget(QWidget *o, QAccessible::Role r = QAccessible::Client, const QString& name = QString())
*/
$constructor=|new|QWidget *,QAccessible::Role=QAccessible::Client,const QString &=QString()

/*
bool isValid() const
*/
$method=|bool|isValid|

/*
QWindow *window() const
*/
$method=|QWindow *|window|

/*
int childCount() const
*/
$method=|int|childCount|

/*
int indexOfChild(const QAccessibleInterface *child) const
*/
$method=|int|indexOfChild|const QAccessibleInterface *

/*
QAccessibleInterface *focusChild() const
*/
$method=|QAccessibleInterface *|focusChild|

/*
QRect rect() const
*/
$method=|QRect|rect|

/*
QAccessibleInterface *parent() const
*/
$method=|QAccessibleInterface *|parent|

/*
QAccessibleInterface *child(int index) const
*/
$method=|QAccessibleInterface *|child|int

/*
QString text(QAccessible::Text t) const
*/
$method=|QString|text|QAccessible::Text

/*
QAccessible::Role role() const
*/
$method=|QAccessible::Role|role|

/*
QColor foregroundColor() const
*/
$method=|QColor|foregroundColor|

/*
QColor backgroundColor() const
*/
$method=|QColor|backgroundColor|

/*
void *interface_cast(QAccessible::InterfaceType t)
*/
$method=|void *|interface_cast|QAccessible::InterfaceType

/*
QStringList actionNames() const
*/
$method=|QStringList|actionNames|

/*
void doAction(const QString &actionName)
*/
$method=|void|doAction|const QString &

/*
QStringList keyBindingsForAction(const QString &actionName) const
*/
$method=|QStringList|keyBindingsForAction|const QString &

#pragma ENDDUMP
