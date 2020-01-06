%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

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

$prototype=static QString licensee()
$staticMethod=|QString|licensee|

$prototype=static QString licensedProducts()
$staticMethod=|QString|licensedProducts|

$prototype=static QDate buildDate()
$staticMethod=|QDate|buildDate|

$prototype=static bool isDebugBuild()
$staticMethod=|bool|isDebugBuild|

$prototype=static QString location(LibraryLocation)
$staticMethod=|QString|location|QLibraryInfo::LibraryLocation

$extraMethods

#pragma ENDDUMP
