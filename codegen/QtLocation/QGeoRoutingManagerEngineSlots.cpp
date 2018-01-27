%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

$slot=5,4,0|finished( QGeoRouteReply * reply )
$slot=5,4,0|error( QGeoRouteReply * reply, QGeoRouteReply::Error error, QString errorString )

$signalMethod=5,4,0|finished(QGeoRouteReply*)
$signalMethod=5,4,0|error(QGeoRouteReply*,QGeoRouteReply::Error,QString)

$endSlotsClass
