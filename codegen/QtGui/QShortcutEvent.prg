%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QKEYSEQUENCE
#endif

CLASS QShortcutEvent INHERIT QEvent

   METHOD new
   METHOD delete
   METHOD key
   METHOD shortcutId
   METHOD isAmbiguous

   DESTRUCTOR destroyObject

END CLASS

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
