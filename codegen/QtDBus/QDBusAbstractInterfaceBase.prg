$header

#include "hbclass.ch"

CLASS QDBusAbstractInterfaceBase INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

#pragma ENDDUMP
