$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QNETWORKCONFIGURATION
#endif

CLASS QMediaNetworkAccessControl INHERIT QMediaControl

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD currentConfiguration
   METHOD setConfigurations

   METHOD onConfigurationChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual QNetworkConfiguration currentConfiguration() const = 0
*/
$method=|QNetworkConfiguration|currentConfiguration|

/*
virtual void setConfigurations(const QList<QNetworkConfiguration> & configurations) = 0
*/
$method=|void|setConfigurations|const QList<QNetworkConfiguration> &

#pragma ENDDUMP
