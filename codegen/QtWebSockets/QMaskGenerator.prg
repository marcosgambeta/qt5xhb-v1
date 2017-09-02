$header

#include "hbclass.ch"

CLASS QMaskGenerator INHERIT QObject

   METHOD delete
   METHOD seed
   METHOD nextMask

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,3,0

$deleteMethod=5,3,0

/*
virtual bool seed() = 0
*/
$virtualMethod=5,3,0|bool|seed|

/*
virtual quint32 nextMask() = 0
*/
$virtualMethod=5,3,0|quint32|nextMask|

#pragma ENDDUMP
