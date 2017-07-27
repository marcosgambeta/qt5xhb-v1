$header

#include "hbclass.ch"

CLASS QFocusEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD gotFocus
   METHOD lostFocus
   METHOD reason

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QFocusEvent ( Type type, Qt::FocusReason reason = Qt::OtherFocusReason )
*/
$constructor=|new|QEvent::Type,Qt::FocusReason=Qt::OtherFocusReason

$deleteMethod

/*
bool gotFocus () const
*/
$method=|bool|gotFocus|

/*
bool lostFocus () const
*/
$method=|bool|lostFocus|

/*
Qt::FocusReason reason () const
*/
$method=|Qt::FocusReason|reason|

#pragma ENDDUMP
