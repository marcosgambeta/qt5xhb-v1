%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMETAOBJECT
#endif

CLASS QMetaClassInfo

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD name
   METHOD value
   METHOD enclosingMetaObject

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

$prototype=QMetaClassInfo()
$constructor=|new|

$deleteMethod

$prototype=const char *name() const
$method=|const char *|name|

$prototype=const char *value() const
$method=|const char *|value|

$prototype=const QMetaObject *enclosingMetaObject() const
$method=|const QMetaObject *|enclosingMetaObject|

$extraMethods

#pragma ENDDUMP
