$header

#include "hbclass.ch"

CLASS QTextBlockGroup INHERIT QTextObject

   DATA self_destruction INIT .F.

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#pragma ENDDUMP
