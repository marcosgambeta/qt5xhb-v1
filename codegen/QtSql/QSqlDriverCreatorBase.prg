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

   METHOD createObject

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QSqlDriver>

$deleteMethod

$prototype=virtual QSqlDriver * createObject () const = 0
$virtualMethod=|QSqlDriver *|createObject|

$extraMethods

#pragma ENDDUMP
