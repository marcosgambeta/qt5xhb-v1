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
   METHOD licensee
   METHOD licensedProducts
   METHOD buildDate
   METHOD isDebugBuild
   METHOD location

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
