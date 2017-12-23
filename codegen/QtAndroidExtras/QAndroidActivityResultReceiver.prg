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

$destructor

#pragma BEGINDUMP

#include <Qt>

%% TODO: 5.2.0 ou 5.3.0 ?

$includes=5,2,0

$prototype=QAndroidActivityResultReceiver()

$prototype=virtual ~QAndroidActivityResultReceiver()
$deleteMethod=5,2,0

$prototype=virtual void handleActivityResult(int receiverRequestCode, int resultCode, const QAndroidJniObject &data) = 0
$virtualMethod=5,2,0|void|handleActivityResult|int,int,const QAndroidJniObject &

$extraMethods

#pragma ENDDUMP
