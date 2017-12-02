$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QANDROIDJNIOBJECT
#endif

CLASS QtAndroid

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD androidActivity
   METHOD androidSdkVersion
   METHOD startIntentSender
   METHOD startActivity

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

$prototype=static QAndroidJniObject androidActivity()
$staticMethod=5,2,0|QAndroidJniObject|androidActivity|

$prototype=static int androidSdkVersion()
$staticMethod=5,2,0|int|androidSdkVersion|

$prototype=static void startIntentSender(const QAndroidJniObject &intentSender, int receiverRequestCode, QAndroidActivityResultReceiver *resultReceiver = 0)
$staticMethod=5,2,0|void|startIntentSender|const QAndroidJniObject &,int,QAndroidActivityResultReceiver *=0

$prototype=static void startActivity(const QAndroidJniObject &intent, int receiverRequestCode, QAndroidActivityResultReceiver *resultReceiver = 0)
$staticMethod=5,2,0|void|startActivity|const QAndroidJniObject &,int,QAndroidActivityResultReceiver *=0

$extraMethods

#pragma ENDDUMP
