$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QKEYSEQUENCE
#endif

CLASS QShortcutEvent INHERIT QEvent

   DATA self_destruction INIT .F.

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

/*
QShortcutEvent(const QKeySequence &key, int id, bool ambiguous = false)
*/
$constructor=|new|const QKeySequence &,int,bool=false

$deleteMethod

/*
const QKeySequence &key() const
*/
$method=|const QKeySequence &|key|

/*
int shortcutId() const
*/
$method=|int|shortcutId|

/*
bool isAmbiguous() const
*/
$method=|bool|isAmbiguous|

#pragma ENDDUMP
