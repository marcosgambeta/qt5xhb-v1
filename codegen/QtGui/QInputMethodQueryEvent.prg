%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QInputMethodQueryEvent(Qt::InputMethodQueries queries)
$constructor=|new|Qt::InputMethodQueries

$deleteMethod

$prototype=Qt::InputMethodQueries queries() const
$method=|Qt::InputMethodQueries|queries|

$prototype=void setValue(Qt::InputMethodQuery query, const QVariant & value)
$method=|void|setValue|Qt::InputMethodQuery,const QVariant &

$prototype=QVariant value(Qt::InputMethodQuery query) const
$method=|QVariant|value|Qt::InputMethodQuery

#pragma ENDDUMP
