$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QNETWORKCONFIGURATION
#endif

CLASS QMediaNetworkAccessControl INHERIT QMediaControl

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

$prototype=virtual QNetworkConfiguration currentConfiguration() const = 0
$virtualMethod=|QNetworkConfiguration|currentConfiguration|

$prototype=virtual void setConfigurations(const QList<QNetworkConfiguration> & configurations) = 0
$virtualMethod=|void|setConfigurations|const QList<QNetworkConfiguration> &

#pragma ENDDUMP
