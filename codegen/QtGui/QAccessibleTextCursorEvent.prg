%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAccessibleEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAccessibleTextCursorEvent(QObject *obj, int cursorPos)
$constructor=|new|QObject *,int

$deleteMethod

$prototype=void setCursorPosition(int position)
$method=|void|setCursorPosition|int

$prototype=int cursorPosition() const
$method=|int|cursorPosition|

#pragma ENDDUMP
