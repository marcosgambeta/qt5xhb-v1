%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

%% TODO:
%% #ifndef QT_NO_NETWORKPROXY
%% #endif // QT_NO_NETWORKPROXY

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QNetworkProxyFactory() (abstract)
%% $constructor=|new|

$prototype=virtual ~QNetworkProxyFactory()
$deleteMethod

$prototype=virtual QList<QNetworkProxy> queryProxy ( const QNetworkProxyQuery & query = QNetworkProxyQuery() ) = 0
$virtualMethod=|QList<QNetworkProxy>|queryProxy|const QNetworkProxyQuery &=QNetworkProxyQuery()

$prototype=static QList<QNetworkProxy> proxyForQuery ( const QNetworkProxyQuery & query )
$staticMethod=|QList<QNetworkProxy>|proxyForQuery|const QNetworkProxyQuery &

$prototype=static void setApplicationProxyFactory ( QNetworkProxyFactory * factory )
$staticMethod=|void|setApplicationProxyFactory|QNetworkProxyFactory *

$prototype=static void setUseSystemConfiguration ( bool enable )
$staticMethod=|void|setUseSystemConfiguration|bool

$prototype=static QList<QNetworkProxy> systemProxyForQuery ( const QNetworkProxyQuery & query = QNetworkProxyQuery() )
$staticMethod=|QList<QNetworkProxy>|systemProxyForQuery|const QNetworkProxyQuery &=QNetworkProxyQuery()

$prototype=static bool usesSystemConfiguration()
$staticMethod=5,8,0|bool|usesSystemConfiguration|

$extraMethods

#pragma ENDDUMP
