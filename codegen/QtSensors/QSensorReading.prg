$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QSensorReading INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD timestamp
   METHOD setTimestamp
   METHOD valueCount
   METHOD value

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

/*
quint64 timestamp() const
*/
$method=5,1,0|quint64|timestamp|

/*
void setTimestamp(quint64 timestamp)
*/
$method=5,1,0|void|setTimestamp|quint64

/*
int valueCount() const
*/
$method=5,1,0|int|valueCount|

/*
QVariant value(int index) const
*/
$method=5,1,0|QVariant|value|int

#pragma ENDDUMP
