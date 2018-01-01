%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QMediaServiceFeaturesInterface

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD supportedFeatures

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

$prototype=virtual QMediaServiceProviderHint::Features supportedFeatures(const QByteArray & service) const = 0
$virtualMethod=|QMediaServiceProviderHint::Features|supportedFeatures|const QByteArray &

$extraMethods

#pragma ENDDUMP
