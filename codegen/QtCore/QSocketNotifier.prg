$header

#include "hbclass.ch"

CLASS QSocketNotifier INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD socket
   METHOD type
   METHOD isEnabled
   METHOD setEnabled

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QSocketNotifier(qintptr socket, Type, QObject *parent = 0)
*/
$constructor=|new|qintptrt,QSocketNotifier::Type,QObject *=0

$deleteMethod

/*
qintptr socket() const
*/
$method=|qintptr|socket|

/*
Type type() const
*/
$method=|QSocketNotifier::Type|type|

/*
bool isEnabled() const
*/
$method=|bool|isEnabled|

/*
void setEnabled(bool)
*/
$method=|void|setEnabled|bool

#pragma ENDDUMP
