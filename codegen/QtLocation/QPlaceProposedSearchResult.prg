$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPLACESEARCHREQUEST
#endif

CLASS QPlaceProposedSearchResult INHERIT QPlaceSearchResult

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD searchRequest
   METHOD setSearchRequest

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

#include <QPlaceSearchRequest>

/*
QPlaceProposedSearchResult()
*/
$constructor=5,4,0|new|

$deleteMethod=5,4,0

/*
QPlaceSearchRequest searchRequest() const
*/
$method=5,4,0|QPlaceSearchRequest|searchRequest|

/*
void setSearchRequest(const QPlaceSearchRequest &request)
*/
$method=5,4,0|void|setSearchRequest|const QPlaceSearchRequest &

#pragma ENDDUMP
