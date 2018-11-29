%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QShortcutEvent(const QKeySequence &key, int id, bool ambiguous = false)
$constructor=|new|const QKeySequence &,int,bool=false

$deleteMethod

$prototype=const QKeySequence &key() const
$method=|const QKeySequence &|key|

$prototype=int shortcutId() const
$method=|int|shortcutId|

$prototype=bool isAmbiguous() const
$method=|bool|isAmbiguous|

#pragma ENDDUMP
