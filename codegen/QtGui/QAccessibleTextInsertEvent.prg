$header

#include "hbclass.ch"

CLASS QAccessibleTextInsertEvent INHERIT QAccessibleTextCursorEvent

   METHOD new
   METHOD delete
   METHOD textInserted
   METHOD changePosition

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAccessibleTextInsertEvent(QObject *obj, int position, const QString &text)
$constructor=|new|QObject *,int,const QString &

$deleteMethod

$prototype=QString textInserted() const
$method=|QString|textInserted|

$prototype=int changePosition() const
$method=|int|changePosition|

#pragma ENDDUMP
