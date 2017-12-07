$header

#include "hbclass.ch"

CLASS QSocketNotifier INHERIT QObject

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

$prototype=QSocketNotifier(qintptr socket, Type, QObject *parent = 0)
$constructor=|new|qintptrt,QSocketNotifier::Type,QObject *=0

$deleteMethod

$prototype=qintptr socket() const
$method=|qintptr|socket|

$prototype=Type type() const
$method=|QSocketNotifier::Type|type|

$prototype=bool isEnabled() const
$method=|bool|isEnabled|

$prototype=void setEnabled(bool)
$method=|void|setEnabled|bool

#pragma ENDDUMP
