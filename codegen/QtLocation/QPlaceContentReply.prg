$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPLACECONTENTREQUEST
#endif

CLASS QPlaceContentReply INHERIT QPlaceReply

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD type
   METHOD totalCount
   METHOD request
   METHOD previousPageRequest
   METHOD nextPageRequest

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

/*
explicit QPlaceContentReply(QObject *parent = 0)
*/
$constructor=5,4,0|new|QObject *=0

$deleteMethod=5,4,0

/*
QPlaceReply::Type type() const
*/
$method=5,4,0|QPlaceReply::Type|type|

/*
int totalCount() const
*/
$method=5,4,0|int|totalCount|

/*
QPlaceContentRequest request() const
*/
$method=5,4,0|QPlaceContentRequest|request|

/*
QPlaceContentRequest previousPageRequest() const
*/
$method=5,4,0|QPlaceContentRequest|previousPageRequest|

/*
QPlaceContentRequest nextPageRequest() const
*/
$method=5,4,0|QPlaceContentRequest|nextPageRequest|

#pragma ENDDUMP
