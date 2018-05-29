%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClass

   METHOD new
   METHOD delete
   METHOD javaVM

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,2,0

$prototype=QAndroidJniEnvironment()
$constructor=5,2,0|new|

$deleteMethod=5,2,0

$prototype=static JavaVM *javaVM()
$staticMethod=5,2,0|JavaVM *|javaVM|

$extraMethods

#pragma ENDDUMP
