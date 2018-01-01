%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QDeclarativeParserStatus

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD classBegin
   METHOD componentComplete

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=virtual void classBegin () = 0
$virtualMethod=|void|classBegin|

$prototype=virtual void componentComplete () = 0
$virtualMethod=|void|componentComplete|

$extraMethods

#pragma ENDDUMP
