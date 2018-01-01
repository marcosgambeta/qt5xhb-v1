%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QAbstractUndoItem

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD undo
   METHOD redo

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

$deleteMethod

$prototype=virtual void undo() = 0
$virtualMethod=|void|undo|

$prototype=virtual void redo() = 0
$virtualMethod=|void|redo|

$extraMethods

#pragma ENDDUMP
