$header

#include "hbclass.ch"

CLASS QPlaceSearchSuggestionReply INHERIT QPlaceReply

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD suggestions
   METHOD type

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

/*
explicit QPlaceSearchSuggestionReply(QObject *parent = 0)
*/
$constructor=5,4,0|new|QObject *=0

$deleteMethod=5,4,0

/*
QStringList suggestions() const
*/
$method=5,4,0|QStringList|suggestions|

/*
Type type() const
*/
$method=5,4,0|QPlaceReply::Type|type|

#pragma ENDDUMP
