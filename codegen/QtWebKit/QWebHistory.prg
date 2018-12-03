%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

$prototype=void back ()
$method=|void|back|

$prototype=QWebHistoryItem backItem () const
$method=|QWebHistoryItem|backItem|

$prototype=QList<QWebHistoryItem> backItems ( int maxItems ) const
$method=|QList<QWebHistoryItem>|backItems|int

$prototype=bool canGoBack () const
$method=|bool|canGoBack|

$prototype=bool canGoForward () const
$method=|bool|canGoForward|

$prototype=void clear ()
$method=|void|clear|

$prototype=int count () const
$method=|int|count|

$prototype=QWebHistoryItem currentItem () const
$method=|QWebHistoryItem|currentItem|

$prototype=int currentItemIndex () const
$method=|int|currentItemIndex|

$prototype=void forward ()
$method=|void|forward|

$prototype=QWebHistoryItem forwardItem () const
$method=|QWebHistoryItem|forwardItem|

$prototype=QList<QWebHistoryItem> forwardItems ( int maxItems ) const
$method=|QList<QWebHistoryItem>|forwardItems|int

$prototype=void goToItem ( const QWebHistoryItem & item )
$method=|void|goToItem|const QWebHistoryItem &

$prototype=QWebHistoryItem itemAt ( int i ) const
$method=|QWebHistoryItem|itemAt|int

$prototype=QList<QWebHistoryItem> items () const
$method=|QList<QWebHistoryItem>|items|

$prototype=int maximumItemCount () const
$method=|int|maximumItemCount|

$prototype=void setMaximumItemCount ( int count )
$method=|void|setMaximumItemCount|int

$extraMethods

#pragma ENDDUMP
