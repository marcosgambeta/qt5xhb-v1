$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QNETWORKACCESSMANAGER
REQUEST QBYTEARRAY
REQUEST QNETWORKREQUEST
REQUEST QSSLCONFIGURATION
REQUEST QURL
#endif

CLASS QNetworkReply INHERIT QIODevice

   METHOD delete
   METHOD abort
   METHOD attribute
   METHOD error
   METHOD hasRawHeader
   METHOD header
   METHOD ignoreSslErrors1
   METHOD ignoreSslErrors2
   METHOD ignoreSslErrors
   METHOD isFinished
   METHOD isRunning
   METHOD manager
   METHOD operation
   METHOD rawHeader
   METHOD rawHeaderList
   METHOD readBufferSize
   METHOD request
   METHOD setReadBufferSize
   METHOD setSslConfiguration
   METHOD sslConfiguration
   METHOD url
   METHOD close

   METHOD onDownloadProgress
   METHOD onError
   METHOD onFinished
   METHOD onMetaDataChanged
   METHOD onUploadProgress

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QSslConfiguration>

$deleteMethod

$prototype=virtual void abort () = 0
$method=|void|abort|

$prototype=QVariant attribute ( QNetworkRequest::Attribute code ) const
$method=|QVariant|attribute|QNetworkRequest::Attribute

$prototype=NetworkError error () const
$method=|QNetworkReply::NetworkError|error|

$prototype=bool hasRawHeader ( const QByteArray & headerName ) const
$method=|bool|hasRawHeader|const QByteArray &

$prototype=QVariant header ( QNetworkRequest::KnownHeaders header ) const
$method=|QVariant|header|QNetworkRequest::KnownHeaders

$prototype=void ignoreSslErrors ( const QList<QSslError> & errors )
$method=|void|ignoreSslErrors,ignoreSslErrors1|const QList<QSslError> &

$prototype=virtual void ignoreSslErrors ()
$method=|void|ignoreSslErrors,ignoreSslErrors2|

//[1]void ignoreSslErrors ( const QList<QSslError> & errors )
//[2]virtual void ignoreSslErrors ()

HB_FUNC_STATIC( QNETWORKREPLY_IGNORESSLERRORS )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    HB_FUNC_EXEC( QNETWORKREPLY_IGNORESSLERRORS1 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QNETWORKREPLY_IGNORESSLERRORS1 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=bool isFinished () const
$method=|bool|isFinished|

$prototype=bool isRunning () const
$method=|bool|isRunning|

$prototype=QNetworkAccessManager * manager () const
$method=|QNetworkAccessManager *|manager|

$prototype=QNetworkAccessManager::Operation operation () const
$method=|QNetworkAccessManager::Operation|operation|

$prototype=QByteArray rawHeader ( const QByteArray & headerName ) const
$method=|QByteArray|rawHeader|const QByteArray &

$prototype=QList<QByteArray> rawHeaderList () const
$method=|QList<QByteArray>|rawHeaderList|

$prototype=qint64 readBufferSize () const
$method=|qint64|readBufferSize|

$prototype=QNetworkRequest request () const
$method=|QNetworkRequest|request|

$prototype=virtual void setReadBufferSize ( qint64 size )
$method=|void|setReadBufferSize|qint64

$prototype=void setSslConfiguration ( const QSslConfiguration & config )
$method=|void|setSslConfiguration|const QSslConfiguration &

$prototype=QSslConfiguration sslConfiguration () const
$method=|QSslConfiguration|sslConfiguration|

$prototype=QUrl url () const
$method=|QUrl|url|

$prototype=virtual void close ()
$method=|void|close|

#pragma ENDDUMP
