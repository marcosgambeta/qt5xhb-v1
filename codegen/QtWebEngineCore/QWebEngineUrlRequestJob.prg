%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWebEngineCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QWebEngineUrlRequestJob(QtWebEngineCore::URLRequestCustomJobDelegate *) [private]

$prototype=~QWebEngineUrlRequestJob()
$deleteMethod

$prototype=QUrl requestUrl() const
$method=|QUrl|requestUrl|

$prototype=QByteArray requestMethod() const
$method=|QByteArray|requestMethod|

$prototype=void reply(const QByteArray &contentType, QIODevice *device)
$method=|void|reply|const QByteArray &,QIODevice *

$prototype=void fail(Error error)
$method=|void|fail|QWebEngineUrlRequestJob::Error

$prototype=void redirect(const QUrl &url)
$method=|void|redirect|const QUrl &

#pragma ENDDUMP
