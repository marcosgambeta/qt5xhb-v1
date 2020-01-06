%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtAndroidExtras

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,3,0

$prototype=static QAndroidJniObject androidActivity()
$staticMethod=5,3,0|QAndroidJniObject|androidActivity|

$prototype=static int androidSdkVersion()
$staticMethod=5,3,0|int|androidSdkVersion|

$prototype=static void startIntentSender(const QAndroidJniObject &intentSender, int receiverRequestCode, QAndroidActivityResultReceiver *resultReceiver = nullptr)
$staticMethod=5,3,0|void|startIntentSender|const QAndroidJniObject &,int,QAndroidActivityResultReceiver *=0

$prototype=static void startActivity(const QAndroidJniObject &intent, int receiverRequestCode, QAndroidActivityResultReceiver *resultReceiver = nullptr)
$staticMethod=5,3,0|void|startActivity|const QAndroidJniObject &,int,QAndroidActivityResultReceiver *=0

$prototype=static QAndroidJniObject androidService()
$staticMethod=5,7,0|QAndroidJniObject|androidService|

$prototype=static QAndroidJniObject androidContext()
$staticMethod=5,8,0|QAndroidJniObject|androidContext|

$prototype=static bool bindService(const QAndroidIntent &serviceIntent, const QAndroidServiceConnection &serviceConnection, BindFlags flags = BindFlag::None)
$staticMethod=5,10,0|bool|bindService|const QAndroidIntent &,const QAndroidServiceConnection &,QtAndroid::BindFlags=QtAndroid::BindFlag::None

%% typedef std::function<void()> Runnable

$prototype=static void runOnAndroidThread(const Runnable &runnable)

$prototype=static void runOnAndroidThreadSync(const Runnable &runnable, int timeoutMs = INT_MAX)

$prototype=static void hideSplashScreen()
$internalStaticMethod=5,7,0|void|hideSplashScreen,hideSplashScreen1|

$prototype=static void hideSplashScreen(int duration)
$internalStaticMethod=5,10,0|void|hideSplashScreen,hideSplashScreen2|int

//[1]static void hideSplashScreen()
//[2]static void hideSplashScreen(int duration)

HB_FUNC_STATIC( QTANDROID_HIDESPLASHSCREEN )
{
  if( ISNUMPAR(0) )
  {
    QtAndroid_hideSplashScreen1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QtAndroid_hideSplashScreen2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

%% typedef QHash<QString, PermissionResult> PermissionResultMap

%% typedef std::function<void(const PermissionResultMap &)> PermissionResultCallback

$prototype=static void requestPermissions(const QStringList &permissions, const PermissionResultCallback &callbackFunc)

$prototype=static PermissionResultMap requestPermissionsSync(const QStringList &permissions, int timeoutMs = INT_MAX)

$prototype=static PermissionResult checkPermission(const QString &permission)
$staticMethod=5,10,0|QtAndroid::PermissionResult|checkPermission|const QString &

$prototype=static bool shouldShowRequestPermissionRationale(const QString &permission)
$staticMethod=5,10,0|bool|shouldShowRequestPermissionRationale|const QString &

$extraMethods

#pragma ENDDUMP
