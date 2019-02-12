%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtScript

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtScript/QScriptString>

$deleteMethod

$prototype=virtual QScriptValue::PropertyFlags flags() const
$virtualMethod=|QScriptValue::PropertyFlags|flags|

$prototype=virtual bool hasNext() const = 0
$virtualMethod=|bool|hasNext|

$prototype=virtual bool hasPrevious() const = 0
$virtualMethod=|bool|hasPrevious|

$prototype=virtual uint id() const
$virtualMethod=|uint|id|

$prototype=virtual QScriptString name() const = 0
$virtualMethod=|QScriptString|name|

$prototype=virtual void next() = 0
$virtualMethod=|void|next|

$prototype=QScriptValue object() const
$method=|QScriptValue|object|

$prototype=virtual void previous() = 0
$virtualMethod=|void|previous|

$prototype=virtual void toBack() = 0
$virtualMethod=|void|toBack|

$prototype=virtual void toFront() = 0
$virtualMethod=|void|toFront|

$extraMethods

#pragma ENDDUMP
