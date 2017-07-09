$header

#include "hbclass.ch"

CLASS QAndroidJniEnvironment

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD javaVM

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,2,0

/*
QAndroidJniEnvironment()
*/
$constructor=5,2,0|new|

$deleteMethod=5,2,0

/*
static JavaVM *javaVM()
*/
$staticMethod=5,2,0|JavaVM *|javaVM|

$extraMethods

#pragma ENDDUMP
