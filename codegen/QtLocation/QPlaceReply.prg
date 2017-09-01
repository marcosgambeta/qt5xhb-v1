$header

#include "hbclass.ch"

CLASS QPlaceReply INHERIT QObject

   METHOD new
   METHOD delete
   METHOD isFinished
   METHOD type
   METHOD errorString
   METHOD error
   METHOD abort

   METHOD onFinished
   METHOD onError

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

/*
explicit QPlaceReply(QObject *parent = 0)
*/
$constructor=5,4,0|new|QObject *=0

$deleteMethod=5,4,0

/*
bool isFinished() const
*/
$method=5,4,0|bool|isFinished|

/*
virtual Type type() const
*/
$method=5,4,0|QPlaceReply::Type|type|

/*
QString errorString() const
*/
$method=5,4,0|QString|errorString|

/*
QPlaceReply::Error error() const
*/
$method=5,4,0|QPlaceReply::Error|error|

/*
virtual void abort()
*/
$method=5,4,0|void|abort|

#pragma ENDDUMP
