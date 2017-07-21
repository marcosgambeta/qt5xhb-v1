$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
#endif

CLASS QHelpContentItem

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD child
   METHOD childCount
   METHOD childPosition
   METHOD parent
   METHOD row
   METHOD title
   METHOD url

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

#include <QUrl>

$deleteMethod

/*
QHelpContentItem * child ( int row ) const
*/
$nethod=|QHelpContentItem *|child|int

/*
int childCount () const
*/
$method=|int|childCount|

/*
int childPosition ( QHelpContentItem * child ) const
*/
$method=|int|childPosition|QHelpContentItem *

/*
QHelpContentItem * parent () const
*/
$method=|QHelpContentItem *|parent|

/*
int row () const
*/
$method=|int|row|

/*
QString title () const
*/
$method=|QString|title|

/*
QUrl url () const
*/
$method=|QUrl|url|

$extraMethods

#pragma ENDDUMP
