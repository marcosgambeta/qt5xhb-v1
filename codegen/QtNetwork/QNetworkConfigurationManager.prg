%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

%% TODO:
%% #ifndef QT_NO_BEARERMANAGEMENT
%% #endif // QT_NO_BEARERMANAGEMENT

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

$prototype=explicit QNetworkConfigurationManager(QObject *parent = Q_NULLPTR)
$constructor=|new|QObject *=0

$prototype=virtual ~QNetworkConfigurationManager()
$deleteMethod

$prototype=QList<QNetworkConfiguration> allConfigurations ( QNetworkConfiguration::StateFlags filter = QNetworkConfiguration::StateFlags() ) const
$method=|QList<QNetworkConfiguration>|allConfigurations|QNetworkConfiguration::StateFlags=QNetworkConfiguration::StateFlags()

$prototype=QNetworkConfigurationManager::Capabilities capabilities () const
$method=|QNetworkConfigurationManager::Capabilities|capabilities|

$prototype=QNetworkConfiguration configurationFromIdentifier ( const QString & identifier ) const
$method=|QNetworkConfiguration|configurationFromIdentifier|const QString &

$prototype=QNetworkConfiguration defaultConfiguration () const
$method=|QNetworkConfiguration|defaultConfiguration|

$prototype=bool isOnline () const
$method=|bool|isOnline|

$prototype=void updateConfigurations () (slot)
$method=|void|updateConfigurations|

$beginSignals
$signal=|configurationAdded(QNetworkConfiguration)
$signal=|configurationChanged(QNetworkConfiguration)
$signal=|configurationRemoved(QNetworkConfiguration)
$signal=|onlineStateChanged(bool)
$signal=|updateCompleted()
$endSignals

#pragma ENDDUMP
