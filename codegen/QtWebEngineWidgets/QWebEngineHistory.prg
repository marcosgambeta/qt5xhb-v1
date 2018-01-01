%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
%% TODO: corrigir
%%//REQUEST QLIST<QWEBENGINEHISTORYITEM>
REQUEST QWEBENGINEHISTORYITEM
#endif

CLASS QWebEngineHistory

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD clear
   METHOD items
   METHOD backItems
   METHOD forwardItems
   METHOD canGoBack
   METHOD canGoForward
   METHOD back
   METHOD forward
   METHOD goToItem
   METHOD backItem
   METHOD currentItem
   METHOD forwardItem
   METHOD itemAt
   METHOD currentItemIndex
   METHOD count

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

$prototype=void clear()
$method=5,4,0|void|clear|

$prototype=QList<QWebEngineHistoryItem> items() const
$method=5,4,0|QList<QWebEngineHistoryItem>|items|

$prototype=QList<QWebEngineHistoryItem> backItems(int maxItems) const
$method=5,4,0|QList<QWebEngineHistoryItem>|backItems|int

$prototype=QList<QWebEngineHistoryItem> forwardItems(int maxItems) const
$method=5,4,0|QList<QWebEngineHistoryItem>|forwardItems|int

$prototype=bool canGoBack() const
$method=5,4,0|bool|canGoBack|

$prototype=bool canGoForward() const
$method=5,4,0|bool|canGoForward|

$prototype=void back()
$method=5,4,0|void|back|

$prototype=void forward()
$method=5,4,0|void|forward|

$prototype=void goToItem(const QWebEngineHistoryItem &item)
$method=5,4,0|void|goToItem|const QWebEngineHistoryItem &

$prototype=QWebEngineHistoryItem backItem() const
$method=5,4,0|QWebEngineHistoryItem|backItem|

$prototype=QWebEngineHistoryItem currentItem() const
$method=5,4,0|QWebEngineHistoryItem|currentItem|

$prototype=QWebEngineHistoryItem forwardItem() const
$method=5,4,0|QWebEngineHistoryItem|forwardItem|

$prototype=QWebEngineHistoryItem itemAt(int i) const
$method=5,4,0|QWebEngineHistoryItem|itemAt|int

$prototype=int currentItemIndex() const
$method=5,4,0|int|currentItemIndex|

$prototype=int count() const
$method=5,4,0|int|count|

$extraMethods

#pragma ENDDUMP
