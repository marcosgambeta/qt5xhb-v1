$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPLACE
REQUEST QPLACEMATCHREQUEST
#endif

CLASS QPlaceMatchReply INHERIT QPlaceReply

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD type
   METHOD places
   METHOD request

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

/*
explicit QPlaceMatchReply(QObject *parent = 0)
*/
$constructor=5,4,0|new|QObject *=0

$deleteMethod=5,4,0

/*
QPlaceReply::Type type() const
*/
$method=5,4,0|QPlaceReply::Type|type|

/*
QList<QPlace> places() const
*/
$method=5,4,0|QList<QPlace>|places|

/*
QPlaceMatchRequest request() const
*/
$method=5,4,0|QPlaceMatchRequest|request|

#pragma ENDDUMP
