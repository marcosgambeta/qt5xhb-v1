$header

#include "hbclass.ch"

CLASS QAccessibleTextCursorEvent INHERIT QAccessibleEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD setCursorPosition
   METHOD cursorPosition

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QAccessibleTextCursorEvent(QObject *obj, int cursorPos)
*/
$constructor=|new|QObject *,int

$deleteMethod

/*
void setCursorPosition(int position)
*/
$method=|void|setCursorPosition|int

/*
int cursorPosition() const
*/
$method=|int|cursorPosition|

#pragma ENDDUMP
