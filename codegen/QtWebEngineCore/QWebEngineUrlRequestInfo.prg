%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClass

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QWebEngineUrlRequestInfo(QWebEngineUrlRequestInfoPrivate *p) (private)

$prototype=~QWebEngineUrlRequestInfo() (private)
%% $deleteMethod

$prototype=ResourceType resourceType() const
$method=|QWebEngineUrlRequestInfo::ResourceType|resourceType|

$prototype=NavigationType navigationType() const
$method=|QWebEngineUrlRequestInfo::NavigationType|navigationType|

$prototype=QUrl requestUrl() const
$method=|QUrl|requestUrl|

$prototype=QUrl firstPartyUrl() const
$method=|QUrl|firstPartyUrl|

$prototype=QByteArray requestMethod() const
$method=|QByteArray|requestMethod|

$prototype=bool changed() const
$method=|bool|changed|

$prototype=void block(bool shouldBlock)
$method=|void|block|bool

$prototype=void redirect(const QUrl &url)
$method=|void|redirect|const QUrl &

$prototype=void setHttpHeader(const QByteArray &name, const QByteArray &value)
$method=|void|setHttpHeader|const QByteArray &,const QByteArray &

#pragma ENDDUMP
