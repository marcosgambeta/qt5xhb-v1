%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$beginClass

   METHOD delete
   METHOD setTarget

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual void setTarget(const QQmlProperty & property) = 0
$virtualMethod=|void|setTarget|const QQmlProperty &

$extraMethods

#pragma ENDDUMP
