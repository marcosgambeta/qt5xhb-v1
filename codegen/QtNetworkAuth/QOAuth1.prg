%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

%% #ifndef QT_NO_HTTP
%% #endif // QT_NO_HTTP

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractOAuth

   METHOD new
   METHOD delete

%%   METHOD clientCredentials
   METHOD clientSharedSecret
   METHOD continueGrantWithVerifier
%%   METHOD deleteResource
%%   METHOD get
   METHOD grant
%%   METHOD head
%%   METHOD post
%%   METHOD put
   METHOD setClientCredentials
   METHOD setClientSharedSecret
   METHOD setSignatureMethod
   METHOD setTemporaryCredentialsUrl
   METHOD setTokenCredentials
   METHOD setTokenCredentialsUrl
   METHOD setTokenSecret
%%   METHOD signatureMethod
   METHOD temporaryCredentialsUrl
%%   METHOD tokenCredentials
   METHOD tokenCredentialsUrl
   METHOD tokenSecret

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,10,0

$prototype=explicit QOAuth1(QObject *parent = nullptr)
$internalConstructor=5,10,0|new1|QObject *=nullptr

$prototype=explicit QOAuth1(QNetworkAccessManager *manager, QObject *parent = nullptr)
$internalConstructor=5,10,0|new2|QNetworkAccessManager *,QObject *=nullptr

$prototype=QOAuth1(const QString &clientIdentifier, const QString &clientSharedSecret, QNetworkAccessManager *manager, QObject *parent = nullptr)

//[1]explicit QOAuth1(QObject *parent = nullptr)
//[2]explicit QOAuth1(QNetworkAccessManager *manager, QObject *parent = nullptr)

HB_FUNC_STATIC( QOAUTH1_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QOAuth1_new1();
  }
  else if( ISBETWEEN(1,2) && ISQNETWORKACCESSMANAGER(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QOAuth1_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,10,0

$prototype=QString clientSharedSecret() const
$method=5,10,0|QString|clientSharedSecret|

$prototype=void setClientSharedSecret(const QString &clientSharedSecret)
$method=5,10,0|void|setClientSharedSecret|const QString &

$prototype=QPair<QString, QString> clientCredentials() const

$prototype=void setClientCredentials(const QPair<QString, QString> &clientCredentials)

$prototype=void setClientCredentials(const QString &clientIdentifier, const QString &clientSharedSecret)
$method=5,10,0|void|setClientCredentials|const QString &,const QString &

//[1]void setClientCredentials(const QPair<QString, QString> &clientCredentials)
//[2]void setClientCredentials(const QString &clientIdentifier, const QString &clientSharedSecret)

$prototype=QString tokenSecret() const
$method=5,10,0|QString|tokenSecret|

$prototype=void setTokenSecret(const QString &tokenSecret)
$method=5,10,0|void|setTokenSecret|const QString &

$prototype=QPair<QString, QString> tokenCredentials() const

$prototype=void setTokenCredentials(const QPair<QString, QString> &tokenCredentials)

$prototype=void setTokenCredentials(const QString &token, const QString &tokenSecret)
$method=5,10,0|void|setTokenCredentials|const QString &,const QString &

//[1]void setTokenCredentials(const QPair<QString, QString> &tokenCredentials)
//[2]void setTokenCredentials(const QString &token, const QString &tokenSecret)

$prototype=QUrl temporaryCredentialsUrl() const
$method=5,10,0|QUrl|temporaryCredentialsUrl|

$prototype=void setTemporaryCredentialsUrl(const QUrl &url)
$method=5,10,0|void|setTemporaryCredentialsUrl|const QUrl &

$prototype=QUrl tokenCredentialsUrl() const
$method=5,10,0|QUrl|tokenCredentialsUrl|

$prototype=void setTokenCredentialsUrl(const QUrl &url)
$method=5,10,0|void|setTokenCredentialsUrl|const QUrl &

$prototype=SignatureMethod signatureMethod() const
%% TODO: fix
%% $method=|QOAuth1::SignatureMethod|signatureMethod|

$prototype=void setSignatureMethod(SignatureMethod value)
$method=5,10,0|void|setSignatureMethod|QOAuth1::SignatureMethod

$prototype=QNetworkReply *head(const QUrl &url, const QVariantMap &parameters = QVariantMap()) override

$prototype=QNetworkReply *get(const QUrl &url, const QVariantMap &parameters = QVariantMap()) override

$prototype=QNetworkReply *post(const QUrl &url, const QVariantMap &parameters = QVariantMap()) override

$prototype=QNetworkReply *put(const QUrl &url, const QVariantMap &parameters = QVariantMap()) override

$prototype=QNetworkReply *deleteResource(const QUrl &url, const QVariantMap &parameters = QVariantMap()) override

$prototype=void grant() override (slot)
$method=5,10,0|void|grant|

$prototype=void continueGrantWithVerifier(const QString &verifier) (slot)
$method=5,10,0|void|continueGrantWithVerifier|const QString &

$prototype=QNetworkReply *requestTemporaryCredentials(QNetworkAccessManager::Operation operation, const QUrl &url, const QVariantMap &parameters = QVariantMap()) (protected)

$prototype=QNetworkReply *requestTokenCredentials(QNetworkAccessManager::Operation operation, const QUrl &url, const QPair<QString, QString> &temporaryToken, const QVariantMap &parameters = QVariantMap()) (protected)

$prototype=void setup(QNetworkRequest *request, const QVariantMap &signingParameters, QNetworkAccessManager::Operation operation) (protected)

$prototype=static QByteArray nonce() (protected)

$prototype=static QByteArray generateAuthorizationHeader(const QVariantMap &oauthParams) (protected)

$beginSignals
$signal=5,10,0|clientSharedSecretChanged(QString)
$signal=5,10,0|signatureMethodChanged(QOAuth1::SignatureMethod)
$signal=5,10,0|temporaryCredentialsUrlChanged(QUrl)
$signal=5,10,0|tokenCredentialsUrlChanged(QUrl)
$signal=5,10,0|tokenSecretChanged(QString)
$endSignals

#pragma ENDDUMP
