%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClass

   METHOD new
   METHOD delete
   METHOD engine
   METHOD incubateFor
   METHOD incubateWhile
   METHOD incubatingObjectCount

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QQmlEngine>

$prototype=QQmlIncubationController()
$constructor=|new|

$deleteMethod

$prototype=QQmlEngine * engine() const
$method=|QQmlEngine *|engine|

$prototype=void incubateFor(int msecs)
$method=|void|incubateFor|int

$prototype=void incubateWhile(volatile bool * flag, int msecs = 0)
%% TODO: verificar 'volatile bool'
$method=|void|incubateWhile|bool *,int=0

$prototype=int incubatingObjectCount() const
$method=|int|incubatingObjectCount|

$extraMethods

#pragma ENDDUMP
