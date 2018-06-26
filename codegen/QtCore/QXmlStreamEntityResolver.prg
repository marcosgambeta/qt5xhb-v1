%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

   METHOD delete
   METHOD resolveUndeclaredEntity

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual QString resolveUndeclaredEntity(const QString & name)
$virtualMethod=|QString|resolveUndeclaredEntity|const QString &

$extraMethods

#pragma ENDDUMP
