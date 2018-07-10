%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QScriptString>

$prototype=QScriptValueIterator(const QScriptValue & object)
$constructor=|new|const QScriptValue &

$deleteMethod

$prototype=QScriptValue::PropertyFlags flags() const
$method=|QScriptValue::PropertyFlags|flags|

$prototype=bool hasNext() const
$method=|bool|hasNext|

$prototype=bool hasPrevious() const
$method=|bool|hasPrevious|

$prototype=QString name() const
$method=|QString|name|

$prototype=void next()
$method=|void|next|

$prototype=void previous()
$method=|void|previous|

$prototype=void remove()
$method=|void|remove|

$prototype=QScriptString scriptName() const
$method=|QScriptString|scriptName|

$prototype=void setValue(const QScriptValue & value)
$method=|void|setValue|const QScriptValue &

$prototype=void toBack()
$method=|void|toBack|

$prototype=void toFront()
$method=|void|toFront|

$prototype=QScriptValue value() const
$method=|QScriptValue|value|

$extraMethods

#pragma ENDDUMP
