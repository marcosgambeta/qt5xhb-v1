$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPLACE
#endif

CLASS QPlaceMatchRequest

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD places
   METHOD setPlaces
   METHOD setResults
   METHOD clear

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
QPlaceMatchRequest()
*/
$internalConstructor=5,4,0|new1|

/*
QPlaceMatchRequest(const QPlaceMatchRequest &other)
*/
$internalConstructor=5,4,0|new2|const QPlaceMatchRequest &

//[1]QPlaceMatchRequest()
//[2]QPlaceMatchRequest(const QPlaceMatchRequest &other)

HB_FUNC_STATIC( QPLACEMATCHREQUEST_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceMatchRequest_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACEMATCHREQUEST(1) )
  {
    QPlaceMatchRequest_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,4,0

/*
QList<QPlace> places() const
*/
$method=5,4,0|QList<QPlace>|places|

/*
void setPlaces(const QList<QPlace> places)
*/
$method=5,4,0|void|setPlaces|const QList<QPlace> &

/*
void setResults(const QList<QPlaceSearchResult> &results)
*/
$method=5,4,0|void|setResults|const QList<QPlaceSearchResult> &

/*
void clear()
*/
$method=5,4,0|void|clear|

$extraMethods

#pragma ENDDUMP
