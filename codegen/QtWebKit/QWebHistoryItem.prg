%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWebKit

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QVariant>

$prototype=QWebHistoryItem ( const QWebHistoryItem & other )
$constructor=|new|const QWebHistoryItem &

$deleteMethod

$prototype=QIcon icon () const
$method=|QIcon|icon|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=QDateTime lastVisited () const
$method=|QDateTime|lastVisited|

$prototype=QUrl originalUrl () const
$method=|QUrl|originalUrl|

$prototype=void setUserData ( const QVariant & userData )
$method=|void|setUserData|const QVariant &

$prototype=QString title () const
$method=|QString|title|

$prototype=QUrl url () const
$method=|QUrl|url|

$prototype=QVariant userData () const
$method=|QVariant|userData|

$extraMethods

#pragma ENDDUMP
