%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtSensors

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,1,0

#include <QtSensors/QSensorBackend>

$deleteMethod=5,1,0

$prototype=static void registerBackend(const QByteArray &type, const QByteArray &identifier, QSensorBackendFactory *factory)
$staticMethod=5,1,0|void|registerBackend|const QByteArray &,const QByteArray &,QSensorBackendFactory *

$prototype=static void unregisterBackend(const QByteArray &type, const QByteArray &identifier)
$staticMethod=5,1,0|void|unregisterBackend|const QByteArray &,const QByteArray &

$prototype=static bool isBackendRegistered(const QByteArray &type, const QByteArray &identifier)
$staticMethod=5,1,0|bool|isBackendRegistered|const QByteArray &,const QByteArray &

$prototype=static QSensorBackend *createBackend(QSensor *sensor)
$staticMethod=5,1,0|QSensorBackend *|createBackend|QSensor *

$prototype=static void setDefaultBackend(const QByteArray &type, const QByteArray &identifier)
$staticMethod=5,1,0|void|setDefaultBackend|const QByteArray &,const QByteArray &

$extraMethods

#pragma ENDDUMP
