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

$prototype=QAccessibleTextSelectionEvent(QObject *obj, int start, int end)
$constructor=|new|QObject *,int,int

$deleteMethod

$prototype=void setSelection(int start, int end)
$method=|void|setSelection|int,int

$prototype=int selectionStart() const
$method=|int|selectionStart|

$prototype=int selectionEnd() const
$method=|int|selectionEnd|

#pragma ENDDUMP
