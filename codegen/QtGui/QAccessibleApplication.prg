$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWINDOW
REQUEST QACCESSIBLEINTERFACE
#endif

CLASS QAccessibleApplication INHERIT QAccessibleObject

   DATA self_destruction INIT .F.

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

/*
QAccessibleApplication()
*/
$constructor=|new|

/*
QWindow *window() const
*/
$method=|QWindow *|window|

/*
int childCount() const
*/
$method=|int|childCount|

/*
int indexOfChild(const QAccessibleInterface*) const
*/
$method=|int|indexOfChild|const QAccessibleInterface *

/*
QAccessibleInterface *focusChild() const
*/
$method=|QAccessibleInterface *|focusChild|

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

#pragma ENDDUMP
