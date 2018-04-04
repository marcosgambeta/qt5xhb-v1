%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

%% #ifndef QT_NO_HTTP
%% #endif // QT_NO_HTTP

#include "hbclass.ch"

CLASS QOAuth1Signature

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   METHOD addRequestBody
   METHOD clientSharedKey
   METHOD hmacSha1
%%   METHOD httpRequestMethod
   METHOD insert
   METHOD keys
%%   METHOD parameters
   METHOD plainText
   METHOD rsaSha1
   METHOD setClientSharedKey
   METHOD setHttpRequestMethod
%%   METHOD setParameters
   METHOD setTokenSecret
   METHOD setUrl
   METHOD swap
   METHOD take
   METHOD tokenSecret
   METHOD url
   METHOD value

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,10,0

$prototype=explicit QOAuth1Signature(const QUrl &url = QUrl(), HttpRequestMethod method = HttpRequestMethod::Post, const QVariantMap &parameters = QVariantMap())
%% TODO: implementar QVariantMap
%% $internalConstructor=|new1|const QUrl &=QUrl(),QOAuth1Signature::HttpRequestMethod=HttpRequestMethod::Post,const QVariantMap &=QVariantMap()

$prototype=QOAuth1Signature(const QUrl &url, const QString &clientSharedKey, const QString &tokenSecret, HttpRequestMethod method = HttpRequestMethod::Post, const QVariantMap &parameters = QVariantMap())
%% TODO: implementar QVariantMap
%% $internalConstructor=|new2|const QUrl &,const QString &,const QString &,QOAuth1Signature::HttpRequestMethod=HttpRequestMethod::Post,const QVariantMap &=QVariantMap()

$prototype=QOAuth1Signature(const QOAuth1Signature &other)
$internalConstructor=5,10,0|new3|const QOAuth1Signature &

$prototype=QOAuth1Signature(QOAuth1Signature &&other)

//[1]explicit QOAuth1Signature(const QUrl &url = QUrl(), HttpRequestMethod method = HttpRequestMethod::Post, const QVariantMap &parameters = QVariantMap())
//[2]QOAuth1Signature(const QUrl &url, const QString &clientSharedKey, const QString &tokenSecret, HttpRequestMethod method = HttpRequestMethod::Post, const QVariantMap &parameters = QVariantMap())
//[3]QOAuth1Signature(const QOAuth1Signature &other)
//[4]QOAuth1Signature(QOAuth1Signature &&other)

HB_FUNC_STATIC( QOAUTH1SIGNATURE_NEW )
{
  if( ISNUMPAR(1) && ISQOAUTH1SIGNATURE(1) )
  {
    QOAuth1Signature_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QOAuth1Signature()
$deleteMethod=5,10,0

$prototype=HttpRequestMethod httpRequestMethod() const
%% TODO: fix
%% $method=|QOAuth1Signature::HttpRequestMethod|httpRequestMethod|

$prototype=void setHttpRequestMethod(HttpRequestMethod method)
$method=5,10,0|void|setHttpRequestMethod|QOAuth1Signature::HttpRequestMethod

$prototype=QUrl url() const
$method=5,10,0|QUrl|url|

$prototype=void setUrl(const QUrl &url)
$method=5,10,0|void|setUrl|const QUrl &

$prototype=QVariantMap parameters() const

$prototype=void setParameters(const QVariantMap &parameters)

$prototype=void addRequestBody(const QUrlQuery &body)
$method=5,10,0|void|addRequestBody|const QUrlQuery &

$prototype=void insert(const QString &key, const QVariant &value)
$method=5,10,0|void|insert|const QString &,const QVariant &

$prototype=QList<QString> keys() const
$method=5,10,0|QList<QString>|keys|

$prototype=QVariant take(const QString &key)
$method=5,10,0|QVariant|take|const QString &

$prototype=QVariant value(const QString &key, const QVariant &defaultValue = QVariant()) const
$method=5,10,0|QVariant|value|const QString &,const QVariant &=QVariant()

$prototype=QString clientSharedKey() const
$method=5,10,0|QString|clientSharedKey|

$prototype=void setClientSharedKey(const QString &secret)
$method=5,10,0|void|setClientSharedKey|const QString &

$prototype=QString tokenSecret() const
$method=5,10,0|QString|tokenSecret|

$prototype=void setTokenSecret(const QString &secret)
$method=5,10,0|void|setTokenSecret|const QString &

$prototype=QByteArray hmacSha1() const
$method=5,10,0|QByteArray|hmacSha1|

$prototype=QByteArray rsaSha1() const
$method=5,10,0|QByteArray|rsaSha1|

$prototype=QByteArray plainText() const
$internalMethod=5,10,0|QByteArray|plainText,plainText1|

$prototype=static QByteArray plainText(const QString &clientSharedSecret, const QString &tokenSecret)
$internalStaticMethod=5,10,0|QByteArray|plainText,plainText2|const QString &,const QString &

//[1]QByteArray plainText() const
//[2]static QByteArray plainText(const QString &clientSharedSecret, const QString &tokenSecret)

HB_FUNC_STATIC( QOAUTH1SIGNATURE_PLAINTEXT )
{
  if( ISNUMPAR(0) )
  {
    QOAuth1Signature_plainText1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QOAuth1Signature_plainText2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void swap(QOAuth1Signature &other)
$method=5,10,0|void|swap|QOAuth1Signature &

$extraMethods

#pragma ENDDUMP
