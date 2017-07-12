$header

#include "hbclass.ch"

CLASS QDeclarativeParserStatus

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD classBegin
   METHOD componentComplete

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
virtual void classBegin () = 0
*/
$method=|void|classBegin|

/*
virtual void componentComplete () = 0
*/
$method=|void|componentComplete|

$extraMethods

#pragma ENDDUMP
