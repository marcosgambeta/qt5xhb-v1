%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtLocation

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

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

$beginSignals
$signal=5,4,0|finished()
$signal=5,4,0|error(QGeoRouteReply::Error,QString)
$endSignals

#pragma ENDDUMP
