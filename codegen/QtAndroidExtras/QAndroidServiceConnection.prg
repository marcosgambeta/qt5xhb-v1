%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtAndroidExtras

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,10,0

$prototype=QAndroidServiceConnection()
$internalConstructor=5,10,0|new1|

$prototype=explicit QAndroidServiceConnection(const QAndroidJniObject &serviceConnection)
$internalConstructor=5,10,0|new2|const QAndroidJniObject &

//[1]QAndroidServiceConnection()
//[2]explicit QAndroidServiceConnection(const QAndroidJniObject &serviceConnection)

HB_FUNC_STATIC( QANDROIDSERVICECONNECTION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QAndroidServiceConnection_new1();
  }
  else if( ISNUMPAR(1) && ISQANDROIDJNIOBJECT(1) )
  {
    QAndroidServiceConnection_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=virtual ~QAndroidServiceConnection()
$deleteMethod=5,10,0

$prototype=virtual void onServiceConnected(const QString &name, const QAndroidBinder &serviceBinder) = 0
%% TODO: implementar

$prototype=virtual void onServiceDisconnected(const QString &name) = 0
%% TODO: implementar

$prototype=QAndroidJniObject handle() const
$method=5,10,0|QAndroidJniObject|handle|

$extraMethods

#pragma ENDDUMP
