$header

#include "hbclass.ch"

CLASS QAccessibleTextUpdateEvent INHERIT QAccessibleTextCursorEvent

   DATA self_destruction INIT .F.

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

/*
QAccessibleTextUpdateEvent(QObject *obj, int position, const QString &oldText, const QString &text)
*/
$constructor=|new|QObject *,int,const QString &,const QString &

$deleteMethod

/*
QString textRemoved() const
*/
$method=|QString|textRemoved|

/*
QString textInserted() const
*/
$method=|QString|textInserted|

/*
int changePosition() const
*/
$method=|int|changePosition|

#pragma ENDDUMP
