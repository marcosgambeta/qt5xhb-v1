$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOROUTEREQUEST
REQUEST QGEOROUTE
#endif

CLASS QGeoRouteReply INHERIT QObject

   METHOD new
   METHOD delete
   METHOD isFinished
   METHOD error
   METHOD errorString
   METHOD request
   METHOD routes
   METHOD abort

   METHOD onFinished
   METHOD onError

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

$prototype=QGeoRouteReply(Error error, const QString &errorString, QObject *parent = 0)
$constructor=5,4,0|new|QGeoRouteReply::Error,const QString &,QObject *=0

$deleteMethod=5,4,0

$prototype=bool isFinished() const
$method=5,4,0|bool|isFinished|

$prototype=Error error() const
$method=5,4,0|QGeoRouteReply::Error|error|

$prototype=QString errorString() const
$method=5,4,0|QString|errorString|

$prototype=QGeoRouteRequest request() const
$method=5,4,0|QGeoRouteRequest|request|

$prototype=QList<QGeoRoute> routes() const
$method=5,4,0|QList<QGeoRoute>|routes|

$prototype=virtual void abort()
$virtualMethod=5,4,0|void|abort|

#pragma ENDDUMP
