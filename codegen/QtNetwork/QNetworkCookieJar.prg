$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QNETWORKCOOKIE
#endif

CLASS QNetworkCookieJar INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD cookiesForUrl
   METHOD setCookiesFromUrl

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QNetworkCookie>

/*
QNetworkCookieJar ( QObject * parent = 0 )
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
virtual QList<QNetworkCookie> cookiesForUrl ( const QUrl & url ) const
*/
$method=|QList<QNetworkCookie>|cookiesForUrl|const QUrl &

/*
virtual bool setCookiesFromUrl ( const QList<QNetworkCookie> & cookieList, const QUrl & url )
*/
$method=|bool|setCookiesFromUrl|const QList<QNetworkCookie> &,const QUrl &

#pragma ENDDUMP
