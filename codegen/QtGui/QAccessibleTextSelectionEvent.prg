$header

#include "hbclass.ch"

CLASS QAccessibleTextSelectionEvent INHERIT QAccessibleTextCursorEvent

   METHOD new
   METHOD delete
   METHOD setSelection
   METHOD selectionStart
   METHOD selectionEnd

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAccessibleTextSelectionEvent(QObject *obj, int start, int end)
$constructor=|new|QObject *,int,int

$deleteMethod

$prototype=void setSelection(int start, int end)
$method=|void|setSelection|int,int

$prototype=int selectionStart() const
$method=|int|selectionStart|

$prototype=int selectionEnd() const
$method=|int|selectionEnd|

#pragma ENDDUMP
