%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QQmlIncubator

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD clear
   METHOD forceCompletion
   METHOD incubationMode
   METHOD isError
   METHOD isLoading
   METHOD isNull
   METHOD isReady
   METHOD object
   METHOD status

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

$prototype=QQmlIncubator(IncubationMode mode = Asynchronous)
$constructor=|new|QQmlIncubator::IncubationMode=QQmlIncubator::Asynchronous)

$deleteMethod

$prototype=void clear()
$method=|void|clear|

$prototype=void forceCompletion()
$method=|void|forceCompletion|

$prototype=IncubationMode incubationMode() const
$method=|QQmlIncubator::IncubationMode|incubationMode|

$prototype=bool isError() const
$method=|bool|isError|

$prototype=bool isLoading() const
$method=|bool|isLoading|

$prototype=bool isNull() const
$method=|bool|isNull|

$prototype=bool isReady() const
$method=|bool|isReady|

$prototype=QObject * object() const
$method=|QObject *|object|

$prototype=Status status() const
$method=|QQmlIncubator::Status|status|

$extraMethods

#pragma ENDDUMP
