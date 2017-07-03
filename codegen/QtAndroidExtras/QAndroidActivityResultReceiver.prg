$header

#include "hbclass.ch"

CLASS QAndroidActivityResultReceiver

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD handleActivityResult

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAndroidActivityResultReceiver
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

$includes=5,2,0

$deleteMethod=5,2,0

/*
virtual void handleActivityResult(int receiverRequestCode, int resultCode, const QAndroidJniObject &data) = 0
*/
$method=5,2,0|void|handleActivityResult|int,int,const QAndroidJniObject &

$extraMethods

#pragma ENDDUMP
