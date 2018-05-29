%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

   METHOD new
   METHOD delete
   METHOD add
   METHOD remove
   METHOD isEmpty
   METHOD clear

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QObjectCleanupHandler()
$constructor=|new|

$deleteMethod

$prototype=QObject* add(QObject* object)
$method=|QObject *|add|QObject *

$prototype=void remove(QObject *object)
$method=|void|remove|QObject *

$prototype=bool isEmpty() const
$method=|bool|isEmpty|

$prototype=void clear()
$method=|void|clear|

#pragma ENDDUMP
