%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAccessibleTextCursorEvent

$addMethods

$endClass

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
