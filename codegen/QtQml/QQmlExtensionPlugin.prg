%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtQml

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual void initializeEngine(QQmlEngine * engine, const char * uri)
$virtualMethod=|void|initializeEngine|QQmlEngine *,const char *

$prototype=virtual void registerTypes(const char * uri) = 0
$virtualMethod=|void|registerTypes|const char *

#pragma ENDDUMP
