%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

%% TODO:
%% typedef QPair<QByteArray, QByteArray> RawHeaderPair;

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QNETWORKACCESSMANAGER
REQUEST QBYTEARRAY
REQUEST QNETWORKREQUEST
REQUEST QSSLCONFIGURATION
REQUEST QURL
#endif

$beginClassFrom=QIODevice

%%   METHOD new
   METHOD delete

   METHOD abort
   METHOD attribute
   METHOD close
   METHOD error
   METHOD hasRawHeader
   METHOD header
%% #ifndef QT_NO_SSL
   METHOD ignoreSslErrors
%% #endif
   METHOD isFinished
   METHOD isRunning
   METHOD isSequential
   METHOD manager
   METHOD operation
   METHOD rawHeader
   METHOD rawHeaderList
%%   METHOD rawHeaderPairs
   METHOD readBufferSize
   METHOD request
   METHOD setReadBufferSize
%% #ifndef QT_NO_SSL
   METHOD setSslConfiguration
%% #endif
%% #ifndef QT_NO_SSL
   METHOD sslConfiguration
%% #endif
   METHOD url

   METHOD onDownloadProgress
   METHOD onError
   METHOD onFinished
   METHOD onMetaDataChanged
   METHOD onUploadProgress
%% #ifndef QT_NO_SSL
   METHOD onEncrypted
   METHOD onSslErrors
   METHOD onPreSharedKeyAuthenticationRequired
%% #endif
   METHOD onRedirected
   METHOD onRedirectAllowed

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QSslConfiguration>

$prototype=explicit QNetworkReply(QObject *parent = Q_NULLPTR) (protected)

$prototype=QNetworkReply(QNetworkReplyPrivate &dd, QObject *parent) (protected)

$prototype=~QNetworkReply()
$deleteMethod

$prototype=virtual void close() Q_DECL_OVERRIDE
$virtualMethod=|void|close|

$prototype=virtual bool isSequential() const Q_DECL_OVERRIDE
$virtualMethod=|bool|isSequential|

$prototype=qint64 readBufferSize () const
$method=|qint64|readBufferSize|

$prototype=virtual void setReadBufferSize ( qint64 size )
$virtualMethod=|void|setReadBufferSize|qint64

$prototype=QNetworkAccessManager * manager () const
$method=|QNetworkAccessManager *|manager|

$prototype=QNetworkAccessManager::Operation operation () const
$method=|QNetworkAccessManager::Operation|operation|

$prototype=QNetworkRequest request () const
$method=|QNetworkRequest|request|

$prototype=NetworkError error () const
$method=|QNetworkReply::NetworkError|error|

$prototype=bool isFinished () const
$method=|bool|isFinished|

$prototype=bool isRunning () const
$method=|bool|isRunning|

$prototype=QUrl url () const
$method=|QUrl|url|

$prototype=QVariant header ( QNetworkRequest::KnownHeaders header ) const
$method=|QVariant|header|QNetworkRequest::KnownHeaders

$prototype=bool hasRawHeader ( const QByteArray & headerName ) const
$method=|bool|hasRawHeader|const QByteArray &

$prototype=QList<QByteArray> rawHeaderList () const
$method=|QList<QByteArray>|rawHeaderList|

$prototype=QByteArray rawHeader ( const QByteArray & headerName ) const
$method=|QByteArray|rawHeader|const QByteArray &

$prototype=const QList<RawHeaderPair>& rawHeaderPairs() const;
%% TODO: implementar
%% $method=|const QList<RawHeaderPair> &|rawHeaderPairs|

$prototype=QVariant attribute ( QNetworkRequest::Attribute code ) const
$method=|QVariant|attribute|QNetworkRequest::Attribute

%% #ifndef QT_NO_SSL

$prototype=QSslConfiguration sslConfiguration () const
$method=|QSslConfiguration|sslConfiguration|

$prototype=void setSslConfiguration ( const QSslConfiguration & configuration )
$method=|void|setSslConfiguration|const QSslConfiguration &

%% #endif

$prototype=virtual void abort () = 0 (slot)
$virtualMethod=|void|abort|

%% #ifndef QT_NO_SSL
$prototype=void ignoreSslErrors ( const QList<QSslError> & errors )
$internalMethod=|void|ignoreSslErrors,ignoreSslErrors1|const QList<QSslError> &
%% #endif

$prototype=virtual void ignoreSslErrors () (slot)
$internalVirtualMethod=|void|ignoreSslErrors,ignoreSslErrors2|

//[1]void ignoreSslErrors ( const QList<QSslError> & errors )
//[2]virtual void ignoreSslErrors ()

HB_FUNC_STATIC( QNETWORKREPLY_IGNORESSLERRORS )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QNetworkReply_ignoreSslErrors1();
  }
  else if( ISNUMPAR(0) )
  {
    QNetworkReply_ignoreSslErrors2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=virtual qint64 writeData(const char *data, qint64 len) Q_DECL_OVERRIDE (protected)

$prototype=void setOperation(QNetworkAccessManager::Operation operation) (protected)

$prototype=void setRequest(const QNetworkRequest &request) (protected)

$prototype=void setError(NetworkError errorCode, const QString &errorString) (protected)

$prototype=void setFinished(bool) (protected)

$prototype=void setUrl(const QUrl &url) (protected)

$prototype=void setHeader(QNetworkRequest::KnownHeaders header, const QVariant &value) (protected)

$prototype=void setRawHeader(const QByteArray &headerName, const QByteArray &value) (protected)

$prototype=void setAttribute(QNetworkRequest::Attribute code, const QVariant &value) (protected)

$prototype=virtual void sslConfigurationImplementation(QSslConfiguration &) const (protected)

$prototype=virtual void setSslConfigurationImplementation(const QSslConfiguration &) (protected)

$prototype=virtual void ignoreSslErrorsImplementation(const QList<QSslError> &) (protected)

$beginSignals
$signal=|downloadProgress(qint64,qint64)
$signal=|error(QNetworkReply::NetworkError)
$signal=|finished()
$signal=|metaDataChanged()
$signal=|uploadProgress(qint64,qint64)
%% #ifndef QT_NO_SSL
$signal=5,1,0|encrypted()
$signal=|sslErrors(QList<QSslError>)
$signal=5,5,0|preSharedKeyAuthenticationRequired(QSslPreSharedKeyAuthenticator*)
%% #endif
$signal=5,6,0|redirected(QUrl)
$signal=5,9,0|redirectAllowed()
$endSignals

#pragma ENDDUMP
