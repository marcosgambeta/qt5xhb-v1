$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
REQUEST QDATETIME
#endif

CLASS QWebEngineHistoryItem

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD originalUrl
   METHOD url
   METHOD title
   METHOD lastVisited
   METHOD iconUrl
   METHOD isValid

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
