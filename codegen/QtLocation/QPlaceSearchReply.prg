$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPLACESEARCHRESULT
REQUEST QPLACESEARCHREQUEST
#endif

CLASS QPlaceSearchReply INHERIT QPlaceReply

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD type
   METHOD results
   METHOD request
   METHOD previousPageRequest
   METHOD nextPageRequest

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

#include <QPlaceSearchRequest>

/*
explicit QPlaceSearchReply(QObject *parent = 0)
*/
$constructor=5,4,0|new|QObject *=0

$deleteMethod=5,4,0

/*
QPlaceReply::Type type() const
*/
$method=5,4,0|QPlaceReply::Type|type|

/*
QList<QPlaceSearchResult> results() const
*/
$method=5,4,0|QList<QPlaceSearchResult>|results|

/*
QPlaceSearchRequest request() const
*/
$method=5,4,0|QPlaceSearchRequest|request|

/*
QPlaceSearchRequest previousPageRequest() const
*/
$method=5,4,0|QPlaceSearchRequest|previousPageRequest|

/*
QPlaceSearchRequest nextPageRequest() const
*/
$method=5,4,0|QPlaceSearchRequest|nextPageRequest|

#pragma ENDDUMP
