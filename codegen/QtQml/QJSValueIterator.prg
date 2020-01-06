%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtQml

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QJSValueIterator(const QJSValue & object)
$constructor=|new|const QJSValue &

$deleteMethod

$prototype=bool hasNext() const
$method=|bool|hasNext|

$prototype=QString name() const
$method=|QString|name|

$prototype=bool next()
$method=|bool|next|

$prototype=QJSValue value() const
$method=|QJSValue|value|

$extraMethods

#pragma ENDDUMP
