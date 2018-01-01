%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QMETAOBJECT
#endif

CLASS QMetaEnum

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD name
   METHOD isFlag
   METHOD keyCount
   METHOD key
   METHOD value
   METHOD scope
   METHOD keyToValue
   METHOD valueToKey
   METHOD keysToValue
   METHOD valueToKeys
   METHOD enclosingMetaObject
   METHOD isValid

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

$prototype=QMetaEnum()
$constructor=|new|

$deleteMethod

$prototype=const char *name() const
$method=|const char *|name|

$prototype=bool isFlag() const
$method=|bool|isFlag|

$prototype=int keyCount() const
$method=|int|keyCount|

$prototype=const char *key(int index) const
$method=|const char *|key|int

$prototype=int value(int index) const
$method=|int|value|int

$prototype=const char *scope() const
$method=|const char *|scope|

$prototype=int keyToValue(const char *key) const
$method=|int|keyToValue|const char *

$prototype=const char* valueToKey(int value) const
$method=|const char *|valueToKey|int

$prototype=int keysToValue(const char * keys) const
$method=|int|keysToValue|const char *

$prototype=QByteArray valueToKeys(int value) const
$method=|QByteArray|valueToKeys|int

$prototype=const QMetaObject *enclosingMetaObject() const
$method=|const QMetaObject *|enclosingMetaObject|

$prototype=bool isValid() const
$method=|bool|isValid|

$extraMethods

#pragma ENDDUMP
