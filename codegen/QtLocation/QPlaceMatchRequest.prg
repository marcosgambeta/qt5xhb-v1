%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPLACE
#endif

$beginClass

   METHOD new
   METHOD delete
   METHOD places
   METHOD setPlaces
   METHOD setResults
   METHOD clear

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,4,0

$prototype=QPlaceMatchRequest()
$internalConstructor=5,4,0|new1|

$prototype=QPlaceMatchRequest(const QPlaceMatchRequest &other)
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

$prototype=QList<QPlace> places() const
$method=5,4,0|QList<QPlace>|places|

$prototype=void setPlaces(const QList<QPlace> places)
$method=5,4,0|void|setPlaces|const QList<QPlace> &

$prototype=void setResults(const QList<QPlaceSearchResult> &results)
$method=5,4,0|void|setResults|const QList<QPlaceSearchResult> &

$prototype=void clear()
$method=5,4,0|void|clear|

$extraMethods

#pragma ENDDUMP
