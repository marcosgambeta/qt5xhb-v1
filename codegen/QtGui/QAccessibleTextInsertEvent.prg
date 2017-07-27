$header

#include "hbclass.ch"

CLASS QAccessibleTextInsertEvent INHERIT QAccessibleTextCursorEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD textInserted
   METHOD changePosition

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QAccessibleTextInsertEvent(QObject *obj, int position, const QString &text)
*/
$constructor=|new|QObject *,int,const QString &

$deleteMethod

/*
QString textInserted() const
*/
$method=|QString|textInserted|

/*
int changePosition() const
*/
$method=|int|changePosition|

#pragma ENDDUMP
