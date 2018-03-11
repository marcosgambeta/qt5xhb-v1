%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QNETWORKCONFIGURATION
#endif

CLASS QMediaNetworkAccessControl INHERIT QMediaControl

%%   METHOD new
   METHOD delete

   METHOD currentConfiguration
   METHOD setConfigurations

   METHOD onConfigurationChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QMediaNetworkAccessControl(QObject *parent = Q_NULLPTR) (protected)

$prototype=virtual ~QMediaNetworkAccessControl()
$deleteMethod

$prototype=virtual QNetworkConfiguration currentConfiguration() const = 0
$virtualMethod=|QNetworkConfiguration|currentConfiguration|

$prototype=virtual void setConfigurations(const QList<QNetworkConfiguration> & configurations) = 0
$virtualMethod=|void|setConfigurations|const QList<QNetworkConfiguration> &

$beginSignals
$signal=|configurationChanged(QNetworkConfiguration)
$endSignals

#pragma ENDDUMP
