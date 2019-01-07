%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWebEngineCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

%%   METHOD onCookieAdded
%%   METHOD onCookieRemoved

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QWebEngineCookieStore(QObject *parent = Q_NULLPTR) [private]

$prototype=virtual ~QWebEngineCookieStore()
$deleteMethod

$prototype=void setCookie(const QNetworkCookie &cookie, const QUrl &origin = QUrl())
$method=|void|setCookie|const QNetworkCookie &,const QUrl &=QUrl()

$prototype=void deleteCookie(const QNetworkCookie &cookie, const QUrl &origin = QUrl())
$method=|void|deleteCookie|const QNetworkCookie &,const QUrl &=QUrl()

$prototype=void deleteSessionCookies()
$method=|void|deleteSessionCookies|

$prototype=void deleteAllCookies()
$method=|void|deleteAllCookies|

$prototype=void loadAllCookies()
$method=|void|loadAllCookies|

#pragma ENDDUMP

%% Q_SIGNALS:
%% void cookieAdded(const QNetworkCookie &cookie);
%% void cookieRemoved(const QNetworkCookie &cookie);
