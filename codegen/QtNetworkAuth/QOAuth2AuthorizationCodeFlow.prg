%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

%% #ifndef QT_NO_HTTP
%% #endif // QT_NO_HTTP

#include "hbclass.ch"

CLASS QOAuth2AuthorizationCodeFlow INHERIT QAbstractOAuth2

   METHOD new
   METHOD delete

   METHOD accessTokenUrl
   METHOD grant
   METHOD refreshAccessToken
   METHOD setAccessTokenUrl

   METHOD onAccessTokenUrlChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QOAuth2AuthorizationCodeFlow(QObject *parent = nullptr)
$internalConstructor=|new1|QObject *=nullptr

$prototype=explicit QOAuth2AuthorizationCodeFlow(QNetworkAccessManager *manager, QObject *parent = nullptr)
$internalConstructor=|new2|QNetworkAccessManager *,QObject *=nullptr

$prototype=QOAuth2AuthorizationCodeFlow(const QString &clientIdentifier, QNetworkAccessManager *manager, QObject *parent = nullptr)
$internalConstructor=|new3|const QString &,QNetworkAccessManager *,QObject *=nullptr

$prototype=QOAuth2AuthorizationCodeFlow(const QUrl &authorizationUrl, const QUrl &accessTokenUrl, QNetworkAccessManager *manager, QObject *parent = nullptr)
$internalConstructor=|new4|const QUrl &,const QUrl &,QNetworkAccessManager *,QObject *=nullptr

$prototype=QOAuth2AuthorizationCodeFlow(const QString &clientIdentifier, const QUrl &authorizationUrl, const QUrl &accessTokenUrl, QNetworkAccessManager *manager, QObject *parent = nullptr)
$internalConstructor=|new5|const QString &,const QUrl &,const QUrl &,QNetworkAccessManager *,QObject *=nullptr

//[1]explicit QOAuth2AuthorizationCodeFlow(QObject *parent = nullptr)
//[2]explicit QOAuth2AuthorizationCodeFlow(QNetworkAccessManager *manager, QObject *parent = nullptr)
//[3]QOAuth2AuthorizationCodeFlow(const QString &clientIdentifier, QNetworkAccessManager *manager, QObject *parent = nullptr)
//[4]QOAuth2AuthorizationCodeFlow(const QUrl &authorizationUrl, const QUrl &accessTokenUrl, QNetworkAccessManager *manager, QObject *parent = nullptr)
//[5]QOAuth2AuthorizationCodeFlow(const QString &clientIdentifier, const QUrl &authorizationUrl, const QUrl &accessTokenUrl, QNetworkAccessManager *manager, QObject *parent = nullptr)

HB_FUNC_STATIC( QOAUTH2AUTHORIZATIONCODEFLOW_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QOAuth2AuthorizationCodeFlow_new1();
  }
  else if( ISBETWEEN(1,2) && ISQNETWORKACCESSMANAGER(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QOAuth2AuthorizationCodeFlow_new2();
  }
  else if( ISBETWEEN(2,3) && ISCHAR(1) && ISQNETWORKACCESSMANAGER(2) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    QOAuth2AuthorizationCodeFlow_new3();
  }
  else if( ISBETWEEN(3,4) && ISQURL(1) && ISQURL(2) && ISQNETWORKACCESSMANAGER(3) && (ISQOBJECT(4)||ISNIL(4)) )
  {
    QOAuth2AuthorizationCodeFlow_new4();
  }
  else if( ISBETWEEN(4,5) && ISCHAR(1) && ISQURL(2) && ISQURL(3) && ISQNETWORKACCESSMANAGER(4) && (ISQOBJECT(5)||ISNIL(5)) )
  {
    QOAuth2AuthorizationCodeFlow_new5();
  }
}

$prototype=~QOAuth2AuthorizationCodeFlow()
$deleteMethod

%%
%% Q_PROPERTY(QUrl accessTokenUrl READ accessTokenUrl WRITE setAccessTokenUrl NOTIFY accessTokenUrlChanged)
%%

$prototype=QUrl accessTokenUrl() const
$method=|QUrl|accessTokenUrl|

$prototype=void setAccessTokenUrl(const QUrl &accessTokenUrl)
$method=|void|setAccessTokenUrl|const QUrl &

%%
%%
%%

$prototype=void grant() override (slot)
$method=|void|grant|

$prototype=void refreshAccessToken() (slot)
$method=|void|refreshAccessToken|

$prototype=QUrl buildAuthenticateUrl(const QVariantMap &parameters = QVariantMap()) (protected)

$prototype=void requestAccessToken(const QString &code) (protected)

$prototype=void resourceOwnerAuthorization(const QUrl &url, const QVariantMap &parameters = QVariantMap()) override (protected)

#pragma ENDDUMP
