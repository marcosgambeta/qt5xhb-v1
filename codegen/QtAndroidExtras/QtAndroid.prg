%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClass

   METHOD androidActivity
   METHOD androidSdkVersion
   METHOD startIntentSender
   METHOD startActivity

$endClass

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
