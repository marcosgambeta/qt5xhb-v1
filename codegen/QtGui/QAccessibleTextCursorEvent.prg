$header

#include "hbclass.ch"

CLASS QAccessibleTextCursorEvent INHERIT QAccessibleEvent

   METHOD new
   METHOD delete
   METHOD setCursorPosition
   METHOD cursorPosition

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAccessibleTextCursorEvent(QObject *obj, int cursorPos)
$constructor=|new|QObject *,int

$deleteMethod

$prototype=void setCursorPosition(int position)
$method=|void|setCursorPosition|int

$prototype=int cursorPosition() const
$method=|int|cursorPosition|

#pragma ENDDUMP
