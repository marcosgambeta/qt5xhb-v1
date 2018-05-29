%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAccessibleTextCursorEvent

   METHOD new
   METHOD delete
   METHOD textRemoved
   METHOD changePosition

$endClass

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
