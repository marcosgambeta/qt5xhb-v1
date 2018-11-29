%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

#include <Qt>

$includes=5,3,0

$prototype=QAndroidActivityResultReceiver()

$prototype=virtual ~QAndroidActivityResultReceiver()
$deleteMethod=5,3,0

$prototype=virtual void handleActivityResult(int receiverRequestCode, int resultCode, const QAndroidJniObject &data) = 0
$virtualMethod=5,3,0|void|handleActivityResult|int,int,const QAndroidJniObject &

$extraMethods

#pragma ENDDUMP
