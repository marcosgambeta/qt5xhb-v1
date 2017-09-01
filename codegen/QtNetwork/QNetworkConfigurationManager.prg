$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QNETWORKCONFIGURATION
#endif

CLASS QNetworkConfigurationManager INHERIT QObject

   METHOD new
   METHOD delete
   METHOD allConfigurations
   METHOD capabilities
   METHOD configurationFromIdentifier
   METHOD defaultConfiguration
   METHOD isOnline
   METHOD updateConfigurations

   METHOD onConfigurationAdded
   METHOD onConfigurationChanged
   METHOD onConfigurationRemoved
   METHOD onOnlineStateChanged
   METHOD onUpdateCompleted

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QNetworkConfigurationManager ( QObject * parent = 0 )
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
QList<QNetworkConfiguration> allConfigurations ( QNetworkConfiguration::StateFlags filter = 0 ) const
*/
$method=|QList<QNetworkConfiguration>|allConfigurations|QNetworkConfiguration::StateFlags=0

/*
QNetworkConfigurationManager::Capabilities capabilities () const
*/
$method=|QNetworkConfigurationManager::Capabilities|capabilities|

/*
QNetworkConfiguration configurationFromIdentifier ( const QString & identifier ) const
*/
$method=|QNetworkConfiguration|configurationFromIdentifier|const QString &

/*
QNetworkConfiguration defaultConfiguration () const
*/
$method=|QNetworkConfiguration|defaultConfiguration|

/*
bool isOnline () const
*/
$method=|bool|isOnline|

/*
void updateConfigurations ()
*/
$method=|void|updateConfigurations|

#pragma ENDDUMP
