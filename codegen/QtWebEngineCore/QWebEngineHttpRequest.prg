%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QWebEngineHttpRequest(const QUrl &url = QUrl(), const QWebEngineHttpRequest::Method &method = QWebEngineHttpRequest::Get)
$constructor=|new1|const QUrl &=QUrl(),const QWebEngineHttpRequest::Method &=QWebEngineHttpRequest::Get

$prototype=QWebEngineHttpRequest(const QWebEngineHttpRequest &other)
$constructor=|new2|const QWebEngineHttpRequest &

//[1]explicit QWebEngineHttpRequest(const QUrl &url = QUrl(), const QWebEngineHttpRequest::Method &method = QWebEngineHttpRequest::Get)
//[2]QWebEngineHttpRequest(const QWebEngineHttpRequest &other)

HB_FUNC_STATIC( QWEBENGINEHTTPREQUEST_NEW )
{
%% TODO: implementar
}

$prototype=~QWebEngineHttpRequest()
$deleteMethod

$prototype=static QWebEngineHttpRequest postRequest(const QUrl &url, const QMap<QString, QString> &postData)
%% TODO: implementar QMap
%% $staticMethod=|QWebEngineHttpRequest|postRequest|const QUrl &,const QMap<QString, QString> &

$prototype=void swap(QWebEngineHttpRequest &other)
$method=|void|swap|QWebEngineHttpRequest &

$prototype=Method method() const
$method=|QWebEngineHttpRequest::Method|method|

$prototype=void setMethod(QWebEngineHttpRequest::Method method)
$method=|void|setMethod|QWebEngineHttpRequest::Method

$prototype=QUrl url() const
$method=|QUrl|url|

$prototype=void setUrl(const QUrl &url)
$method=|void|setUrl|const QUrl &

$prototype=QByteArray postData() const
$method=|QByteArray|postData|

$prototype=void setPostData(const QByteArray &postData)
$method=|void|setPostData|const QByteArray &

$prototype=bool hasHeader(const QByteArray &headerName) const
$method=|bool|hasHeader|const QByteArray &

$prototype=QVector<QByteArray> headers() const
$method=|QVector<QByteArray>|headers|

$prototype=QByteArray header(const QByteArray &headerName) const
$method=|QByteArray|header|const QByteArray &

$prototype=void setHeader(const QByteArray &headerName, const QByteArray &value)
$method=|void|setHeader|const QByteArray &,const QByteArray &

$prototype=void unsetHeader(const QByteArray &headerName)
$method=|void|unsetHeader|const QByteArray &

#pragma ENDDUMP
