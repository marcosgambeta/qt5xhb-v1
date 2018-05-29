%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAccessibleEvent

   METHOD new
   METHOD delete
   METHOD setValue
   METHOD value

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
