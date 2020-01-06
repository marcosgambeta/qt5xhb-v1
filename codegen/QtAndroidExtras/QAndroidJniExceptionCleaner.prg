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

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,10,0

$prototype=explicit QAndroidJniExceptionCleaner(OutputMode outputMode = OutputMode::Silent)
$constructor=5,10,0|new|QAndroidJniExceptionCleaner::OutputMode=QAndroidJniExceptionCleaner::Silent

$prototype=~QAndroidJniExceptionCleaner()
$deleteMethod=5,10,0

$prototype=void clean()
$method=5,10,0|void|clean|

$extraMethods

#pragma ENDDUMP
