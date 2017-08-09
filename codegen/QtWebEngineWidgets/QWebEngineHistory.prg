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

/*
void clear()
*/
$method=5,4,0|void|clear|

/*
QList<QWebEngineHistoryItem> items() const
*/
$method=5,4,0|QList<QWebEngineHistoryItem>|items|

/*
QList<QWebEngineHistoryItem> backItems(int maxItems) const
*/
$method=5,4,0|QList<QWebEngineHistoryItem>|backItems|int

/*
QList<QWebEngineHistoryItem> forwardItems(int maxItems) const
*/
$method=5,4,0|QList<QWebEngineHistoryItem>|forwardItems|int

/*
bool canGoBack() const
*/
$method=5,4,0|bool|canGoBack|

/*
bool canGoForward() const
*/
$method=5,4,0|bool|canGoForward|

/*
void back()
*/
$method=5,4,0|void|back|

/*
void forward()
*/
$method=5,4,0|void|forward|

/*
void goToItem(const QWebEngineHistoryItem &item)
*/
$method=5,4,0|void|goToItem|const QWebEngineHistoryItem &

/*
QWebEngineHistoryItem backItem() const
*/
$method=5,4,0|QWebEngineHistoryItem|backItem|

/*
QWebEngineHistoryItem currentItem() const
*/
$method=5,4,0|QWebEngineHistoryItem|currentItem|

/*
QWebEngineHistoryItem forwardItem() const
*/
$method=5,4,0|QWebEngineHistoryItem|forwardItem|

/*
QWebEngineHistoryItem itemAt(int i) const
*/
$method=5,4,0|QWebEngineHistoryItem|itemAt|int

/*
int currentItemIndex() const
*/
$method=5,4,0|int|currentItemIndex|

/*
int count() const
*/
$method=5,4,0|int|count|

$extraMethods

#pragma ENDDUMP
