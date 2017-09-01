$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWEBHISTORYITEM
#endif

CLASS QWebHistory

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD back
   METHOD backItem
   METHOD backItems
   METHOD canGoBack
   METHOD canGoForward
   METHOD clear
   METHOD count
   METHOD currentItem
   METHOD currentItemIndex
   METHOD forward
   METHOD forwardItem
   METHOD forwardItems
   METHOD goToItem
   METHOD itemAt
   METHOD items
   METHOD maximumItemCount
   METHOD setMaximumItemCount

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
void back ()
*/
$method=|void|back|

/*
QWebHistoryItem backItem () const
*/
$method=|QWebHistoryItem|backItem|

/*
QList<QWebHistoryItem> backItems ( int maxItems ) const
*/
$method=|QList<QWebHistoryItem>|backItems|int

/*
bool canGoBack () const
*/
$method=|bool|canGoBack|

/*
bool canGoForward () const
*/
$method=|bool|canGoForward|

/*
void clear ()
*/
$method=|void|clear|

/*
int count () const
*/
$method=|int|count|

/*
QWebHistoryItem currentItem () const
*/
$method=|QWebHistoryItem|currentItem|

/*
int currentItemIndex () const
*/
$method=|int|currentItemIndex|

/*
void forward ()
*/
$method=|void|forward|

/*
QWebHistoryItem forwardItem () const
*/
$method=|QWebHistoryItem|forwardItem|

/*
QList<QWebHistoryItem> forwardItems ( int maxItems ) const
*/
$method=|QList<QWebHistoryItem>|forwardItems|int

/*
void goToItem ( const QWebHistoryItem & item )
*/
$method=|void|goToItem|const QWebHistoryItem &

/*
QWebHistoryItem itemAt ( int i ) const
*/
$method=|QWebHistoryItem|itemAt|int

/*
QList<QWebHistoryItem> items () const
*/
$method=|QList<QWebHistoryItem>|items|

/*
int maximumItemCount () const
*/
$method=|int|maximumItemCount|

/*
void setMaximumItemCount ( int count )
*/
$method=|void|setMaximumItemCount|int

$extraMethods

#pragma ENDDUMP
