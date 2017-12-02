$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOSHAPE
REQUEST QGEOLOCATION
#endif

CLASS QGeoCodeReply INHERIT QObject

   METHOD new
   METHOD delete
   METHOD isFinished
   METHOD error
   METHOD errorString
   METHOD viewport
   METHOD locations
   METHOD limit
   METHOD offset
   METHOD abort

   METHOD onFinished
   METHOD onError

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

#include <QGeoShape>

$prototype=QGeoCodeReply(Error error, const QString &errorString, QObject *parent = 0)
$constructor=5,4,0|new|QGeoCodeReply::Error,const QString &,QObject *=0

$deleteMethod=5,4,0

$prototype=bool isFinished() const
$method=5,4,0|bool|isFinished|

$prototype=Error error() const
$method=5,4,0|QGeoCodeReply::Error|error|

$prototype=QString errorString() const
$method=5,4,0|QString|errorString|

$prototype=QGeoShape viewport() const
$method=5,4,0|QGeoShape|viewport|

$prototype=QList<QGeoLocation> locations() const
$method=5,4,0|QList<QGeoLocation>|locations|

$prototype=int limit() const
$method=5,4,0|int|limit|

$prototype=int offset() const
$method=5,4,0|int|offset|

$prototype=virtual void abort()
$method=5,4,0|void|abort|

#pragma ENDDUMP
