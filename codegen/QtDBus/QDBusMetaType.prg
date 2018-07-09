%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=static bool demarshall(const QDBusArgument &, int id, void *data)
$staticMethod=|bool|demarshall|const QDBusArgument &,int,void *

$prototype=static int signatureToType(const char *signature)
$staticMethod=|int|signatureToType|const char *

$prototype=static const char *typeToSignature(int type)
$staticMethod=|const char *|typeToSignature|int

$extraMethods

#pragma ENDDUMP
