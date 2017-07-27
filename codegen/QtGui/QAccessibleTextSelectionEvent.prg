$header

#include "hbclass.ch"

CLASS QAccessibleTextSelectionEvent INHERIT QAccessibleTextCursorEvent

   DATA self_destruction INIT .F.

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

/*
QAccessibleTextSelectionEvent(QObject *obj, int start, int end)
*/
$constructor=|new|QObject *,int,int

$deleteMethod

/*
void setSelection(int start, int end)
*/
$method=|void|setSelection|int,int

/*
int selectionStart() const
*/
$method=|int|selectionStart|

/*
int selectionEnd() const
*/
$method=|int|selectionEnd|

#pragma ENDDUMP
