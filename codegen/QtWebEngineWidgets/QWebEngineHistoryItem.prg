%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

   METHOD new
   METHOD delete
   METHOD originalUrl
   METHOD url
   METHOD title
   METHOD lastVisited
   METHOD iconUrl
   METHOD isValid

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,4,0

$prototype=QWebEngineHistoryItem(const QWebEngineHistoryItem &other)
$constructor=5,4,0|new|const QWebEngineHistoryItem &

$deleteMethod=5,4,0

$prototype=QUrl originalUrl() const
$method=5,4,0|QUrl|originalUrl|

$prototype=QUrl url() const
$method=5,4,0|QUrl|url|

$prototype=QString title() const
$method=5,4,0|QString|title|

$prototype=QDateTime lastVisited() const
$method=5,4,0|QDateTime|lastVisited|

$prototype=QUrl iconUrl() const
$method=5,4,0|QUrl|iconUrl|

$prototype=bool isValid() const
$method=5,4,0|bool|isValid|

$extraMethods

#pragma ENDDUMP
