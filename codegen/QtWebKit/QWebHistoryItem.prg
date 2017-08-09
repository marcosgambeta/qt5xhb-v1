$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QICON
REQUEST QDATETIME
REQUEST QURL
REQUEST QVARIANT
#endif

CLASS QWebHistoryItem

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD icon
   METHOD isValid
   METHOD lastVisited
   METHOD originalUrl
   METHOD setUserData
   METHOD title
   METHOD url
   METHOD userData

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

#include <QVariant>

/*
QWebHistoryItem ( const QWebHistoryItem & other )
*/
$constructor=|new|const QWebHistoryItem &

$deleteMethod

/*
QIcon icon () const
*/
$method=|QIcon|icon|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
QDateTime lastVisited () const
*/
$method=|QDateTime|lastVisited|

/*
QUrl originalUrl () const
*/
$method=|QUrl|originalUrl|

/*
void setUserData ( const QVariant & userData )
*/
$method=|void|setUserData|const QVariant &

/*
QString title () const
*/
$method=|QString|title|

/*
QUrl url () const
*/
$method=|QUrl|url|

/*
QVariant userData () const
*/
$method=|QVariant|userData|

$extraMethods

#pragma ENDDUMP
