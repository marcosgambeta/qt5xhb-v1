%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$beginClass

   METHOD delete
   METHOD handleActivityResult

$endClass

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
