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

$prototype=static int registerTypedef(const char *typeName, int aliasId)
$staticMethod=|int|registerTypedef|const char *,int

$prototype=static int type(const char *typeName)
$staticMethod=|int|type|const char *

$prototype=static const char *typeName(int type)
$staticMethod=|const char *|typeName|int

$prototype=static bool isRegistered(int type)
$staticMethod=|bool|isRegistered|int

$prototype=static void *construct(int type, void *where, const void *copy)
$staticMethod=|void *|construct|int,void *,const void *

$prototype=static void destroy(int type, void *data)
$staticMethod=|void|destroy|int,void *

$prototype=static bool save(QDataStream &stream, int type, const void *data)
$staticMethod=|bool|save|QDataStream &,int,const void *

$prototype=static bool load(QDataStream &stream, int type, void *data)
$staticMethod=|bool|load|QDataStream &,int,void *

$extraMethods

#pragma ENDDUMP
