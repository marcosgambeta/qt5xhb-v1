%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMEDIASERVICE
#endif

CLASS QMediaServiceProviderPlugin INHERIT QObject,QMediaServiceProviderFactoryInterface

   METHOD delete
   METHOD create
   METHOD release

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual QMediaService * create(const QString & key) = 0
$virtualMethod=|QMediaService *|create|const QString &

$prototype=virtual void release(QMediaService * service) = 0
$virtualMethod=|void|release|QMediaService *

#pragma ENDDUMP
