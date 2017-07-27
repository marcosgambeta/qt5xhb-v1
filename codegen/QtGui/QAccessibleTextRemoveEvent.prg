$header

#include "hbclass.ch"

CLASS QAccessibleTextRemoveEvent INHERIT QAccessibleTextCursorEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD textRemoved
   METHOD changePosition

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QAccessibleTextRemoveEvent(QObject *obj, int position, const QString &text)
*/
$constructor=|new|QObject *,int,const QString &

$deleteMethod

/*
QString textRemoved() const
*/
$method=|QString|textRemoved|

/*
int changePosition() const
*/
$method=|int|changePosition|

#pragma ENDDUMP
