%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject,QMediaServiceProviderFactoryInterface

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtMultimedia/QMediaService>

$deleteMethod

$prototype=virtual QMediaService* create(const QString& key) override = 0
%% TODO: is virtual ?
$virtualMethod=|QMediaService *|create|const QString &

$prototype=virtual void release(QMediaService *service) override = 0
%% TODO: is virtual ?
$virtualMethod=|void|release|QMediaService *

#pragma ENDDUMP
