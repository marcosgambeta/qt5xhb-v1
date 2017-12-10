$header

#include "hbclass.ch"

CLASS QAccessibleTextRemoveEvent INHERIT QAccessibleTextCursorEvent

   METHOD new
   METHOD delete
   METHOD textRemoved
   METHOD changePosition

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAccessibleTextRemoveEvent(QObject *obj, int position, const QString &text)
$constructor=|new|QObject *,int,const QString &

$deleteMethod

$prototype=QString textRemoved() const
$method=|QString|textRemoved|

$prototype=int changePosition() const
$method=|int|changePosition|

#pragma ENDDUMP
