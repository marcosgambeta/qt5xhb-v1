$header

#include "hbclass.ch"

CLASS QPlaceIdReply INHERIT QPlaceReply

   METHOD new
   METHOD delete
   METHOD type
   METHOD operationType
   METHOD id

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

$prototype=explicit QPlaceIdReply(OperationType operationType, QObject *parent = 0)
$constructor=5,4,0|new|QPlaceIdReply::OperationType,QObject *=0

$deleteMethod=5,4,0

$prototype=QPlaceReply::Type type() const
$method=5,4,0|QPlaceReply::Type|type|

$prototype=OperationType operationType() const
$method=5,4,0|QPlaceIdReply::OperationType|operationType|

$prototype=QString id() const
$method=5,4,0|QString|id|

#pragma ENDDUMP
