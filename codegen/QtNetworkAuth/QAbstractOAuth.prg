%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

%% TODO: class guarded by #ifndef QT_NO_HTTP ... #endif // QT_NO_HTTP
%% typedef std::function<void(Stage, QVariantMap*)> ModifyParametersFunction;

#include "hbclass.ch"

CLASS QAbstractOAuth INHERIT QObject

%%   METHOD new
   METHOD delete

   METHOD authorizationUrl
   METHOD clientIdentifier
   METHOD contentType
%%   METHOD deleteResource
%%   METHOD extraTokens
%%   METHOD get
   METHOD grant
%%   METHOD head
%%   METHOD modifyParametersFunction
   METHOD networkAccessManager
%%   METHOD post
%%   METHOD put
   METHOD replyHandler
   METHOD setAuthorizationUrl
   METHOD setClientIdentifier
   METHOD setContentType
%%   METHOD setModifyParametersFunction
   METHOD setNetworkAccessManager
   METHOD setReplyHandler
   METHOD setToken
%%   METHOD status
   METHOD token

   METHOD onAuthorizationUrlChanged
   METHOD onAuthorizeWithBrowser
   METHOD onClientIdentifierChanged
   METHOD onContentTypeChanged
%%   METHOD onExtraTokensChanged
   METHOD onFinished
   METHOD onGranted
   METHOD onReplyDataReceived
%%   METHOD onRequestFailed
   METHOD onStatusChanged
   METHOD onTokenChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QNetworkAccessManager>
#include <QAbstractOAuthReplyHandler>

$prototype=explicit QAbstractOAuth(QAbstractOAuthPrivate &, QObject *parent = nullptr) (protected)

$prototype=virtual ~QAbstractOAuth()
$deleteMethod

%%
%% Q_PROPERTY(QString clientIdentifier READ clientIdentifier WRITE setClientIdentifier NOTIFY clientIdentifierChanged)
%%

$prototype=QString clientIdentifier() const
$method=|QString|clientIdentifier|

$prototype=void setClientIdentifier(const QString &clientIdentifier)
$method=|void|setClientIdentifier|const QString &

%%
%% Q_PROPERTY(QString token READ token WRITE setToken NOTIFY tokenChanged)
%%

$prototype=QString token() const
$method=|QString|token|

$prototype=void setToken(const QString &token)
$method=|void|setToken|const QString &

%%
%% Q_PROPERTY(Status status  READ status NOTIFY statusChanged)
%%

$prototype=Status status() const
%% TODO: fix
%% $method=|QAbstractOAuth::Status|status|

%%
%% Q_PROPERTY(QUrl authorizationUrl READ authorizationUrl WRITE setAuthorizationUrl NOTIFY authorizationUrlChanged)
%%

$prototype=QUrl authorizationUrl() const
$method=|QUrl|authorizationUrl|

$prototype=void setAuthorizationUrl(const QUrl &url)
$method=|void|setAuthorizationUrl|const QUrl &

%%
%% Q_PROPERTY(QVariantMap extraTokens READ extraTokens NOTIFY extraTokensChanged)
%%

$prototype=QVariantMap extraTokens() const
%% $method=|QVariantMap|extraTokens|

%%
%% Q_PROPERTY(QAbstractOAuth::ContentType contentType READ contentType WRITE setContentType NOTIFY contentTypeChanged)
%%

$prototype=ContentType contentType() const
%% TODO: fix
%% $method=|QAbstractOAuth::ContentType|contentType|

$prototype=void setContentType(ContentType contentType)
$method=|void|setContentType|QAbstractOAuth::ContentType

%%
%%
%%

$prototype=QNetworkAccessManager *networkAccessManager() const
$method=|QNetworkAccessManager *|networkAccessManager|

$prototype=void setNetworkAccessManager(QNetworkAccessManager *networkAccessManager)
$method=|void|setNetworkAccessManager|QNetworkAccessManager *

$prototype=QAbstractOAuthReplyHandler *replyHandler() const
$method=|QAbstractOAuthReplyHandler *|replyHandler|

$prototype=void setReplyHandler(QAbstractOAuthReplyHandler *handler)
$method=|void|setReplyHandler|QAbstractOAuthReplyHandler *

$prototype=Q_INVOKABLE virtual QNetworkReply *head(const QUrl &url, const QVariantMap &parameters = QVariantMap()) = 0
%% $virtualMethod=|QNetworkReply *|head|const QUrl &,const QVariantMap &=QVariantMap()

$prototype=Q_INVOKABLE virtual QNetworkReply *get(const QUrl &url, const QVariantMap &parameters = QVariantMap()) = 0
%% $virtualMethod=|QNetworkReply *|get|const QUrl &,const QVariantMap &=QVariantMap()

$prototype=Q_INVOKABLE virtual QNetworkReply *post(const QUrl &url, const QVariantMap &parameters = QVariantMap()) = 0
%% $virtualMethod=|QNetworkReply *|post|const QUrl &,const QVariantMap &=QVariantMap()

$prototype=Q_INVOKABLE virtual QNetworkReply *put(const QUrl &url, const QVariantMap &parameters = QVariantMap()) = 0
%% $virtualMethod=|QNetworkReply *|put|const QUrl &,const QVariantMap &=QVariantMap()

$prototype=Q_INVOKABLE virtual QNetworkReply *deleteResource( const QUrl &url, const QVariantMap &parameters = QVariantMap()) = 0
%% $virtualMethod=|QNetworkReply *|deleteResource|const QUrl &,const QVariantMap &=QVariantMap()

$prototype=ModifyParametersFunction modifyParametersFunction() const
%% TODO: implementar

$prototype=void setModifyParametersFunction(const ModifyParametersFunction &modifyParametersFunction)
%% TODO: implementar

$prototype=virtual void grant() = 0 (slot)
$virtualMethod=|void|grant|

$prototype=void setStatus(Status status) (protected)

$prototype=QString callback() const (protected)

$prototype=virtual void resourceOwnerAuthorization(const QUrl &url, const QVariantMap &parameters) (protected)

$prototype=static QByteArray generateRandomString(quint8 length) (protected)

$connectSignalFunction

$signalMethod=|authorizationUrlChanged(QUrl)
$signalMethod=|authorizeWithBrowser(QUrl)
$signalMethod=|clientIdentifierChanged(QString)
$signalMethod=|contentTypeChanged(QAbstractOAuth::ContentType)
%% $signalMethod=|extraTokensChanged(QVariantMap)
$signalMethod=|finished(QNetworkReply*)
$signalMethod=|granted()
$signalMethod=|replyDataReceived(QByteArray)
%% $signalMethod=|requestFailed(QAbstractOAuth::Error)
$signalMethod=|statusChanged(QAbstractOAuth::Status)
$signalMethod=|tokenChanged(QString)

#pragma ENDDUMP
