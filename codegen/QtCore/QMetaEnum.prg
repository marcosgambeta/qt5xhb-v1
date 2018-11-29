%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

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
%% TODO: implementar segundo parametro
$method=|int|keyToValue|const char *

$prototype=const char* valueToKey(int value) const
$method=|const char *|valueToKey|int

$prototype=int keysToValue(const char * keys) const
%% TODO: implementar segundo parametro
$method=|int|keysToValue|const char *

$prototype=QByteArray valueToKeys(int value) const
$method=|QByteArray|valueToKeys|int

$prototype=const QMetaObject *enclosingMetaObject() const
$method=|const QMetaObject *|enclosingMetaObject|

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=const char *QMetaEnum::enumName() const
$method=5,12,0|const char *|enumName|

$prototype=static QMetaEnum QMetaEnum::fromType()
%% TODO: implementar
%% $staticMethod=5,5,0|QMetaEnum|fromType|

$prototype=bool QMetaEnum::isScoped() const
$method=5,8,0|bool|isScoped|

$extraMethods

#pragma ENDDUMP
