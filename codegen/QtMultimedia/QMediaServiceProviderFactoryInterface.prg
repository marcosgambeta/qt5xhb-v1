%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=virtual ~QMediaServiceProviderFactoryInterface()
$deleteMethod

$prototype=virtual QMediaService* create(QString const& key) = 0
%% TODO: implementar
%% $virtualMethod=|QMediaService *|create|QString const &

$prototype=virtual void release(QMediaService *service) = 0
$virtualMethod=|void|release|QMediaService *

$extraMethods

#pragma ENDDUMP
