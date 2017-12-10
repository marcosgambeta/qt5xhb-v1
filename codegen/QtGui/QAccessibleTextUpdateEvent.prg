$header

#include "hbclass.ch"

CLASS QAccessibleTextUpdateEvent INHERIT QAccessibleTextCursorEvent

   METHOD new
   METHOD delete
   METHOD textRemoved
   METHOD textInserted
   METHOD changePosition

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAccessibleTextUpdateEvent(QObject *obj, int position, const QString &oldText, const QString &text)
$constructor=|new|QObject *,int,const QString &,const QString &

$deleteMethod

$prototype=QString textRemoved() const
$method=|QString|textRemoved|

$prototype=QString textInserted() const
$method=|QString|textInserted|

$prototype=int changePosition() const
$method=|int|changePosition|

#pragma ENDDUMP
