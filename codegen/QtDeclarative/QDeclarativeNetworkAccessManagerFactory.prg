%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QNETWORKACCESSMANAGER
#endif

CLASS QDeclarativeNetworkAccessManagerFactory

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD create

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual QNetworkAccessManager * create ( QObject * parent ) = 0
$virtualMethod=|QNetworkAccessManager *|create|QObject *

$extraMethods

#pragma ENDDUMP
