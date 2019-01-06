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

$beginClassFrom=QAccessibleEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAccessibleValueChangeEvent(QObject *obj, const QVariant &val)
$constructor=|new|QObject *,const QVariant &

$deleteMethod

$prototype=void setValue(const QVariant & val)
$method=|void|setValue|const QVariant &

$prototype=QVariant value() const
$method=|QVariant|value|

#pragma ENDDUMP
