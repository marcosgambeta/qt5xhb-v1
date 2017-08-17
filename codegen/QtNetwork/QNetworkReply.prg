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

   DATA self_destruction INIT .F.

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

/*
virtual void abort () = 0
*/
$method=|void|abort|

/*
QVariant attribute ( QNetworkRequest::Attribute code ) const
*/
$method=|QVariant|attribute|QNetworkRequest::Attribute

/*
NetworkError error () const
*/
$method=|QNetworkReply::NetworkError|error|

/*
bool hasRawHeader ( const QByteArray & headerName ) const
*/
$method=|bool|hasRawHeader|const QByteArray &

/*
QVariant header ( QNetworkRequest::KnownHeaders header ) const
*/
$method=|QVariant|header|QNetworkRequest::KnownHeaders

/*
void ignoreSslErrors ( const QList<QSslError> & errors )
*/
$method=|void|ignoreSslErrors,ignoreSslErrors1|const QList<QSslError> &

/*
virtual void ignoreSslErrors ()
*/
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

/*
bool isFinished () const
*/
$method=|bool|isFinished|

/*
bool isRunning () const
*/
$method=|bool|isRunning|

/*
QNetworkAccessManager * manager () const
*/
$method=|QNetworkAccessManager *|manager|

/*
QNetworkAccessManager::Operation operation () const
*/
$method=|QNetworkAccessManager::Operation|operation|

/*
QByteArray rawHeader ( const QByteArray & headerName ) const
*/
$method=|QByteArray|rawHeader|const QByteArray &

/*
QList<QByteArray> rawHeaderList () const
*/
$method=|QList<QByteArray>|rawHeaderList|

/*
qint64 readBufferSize () const
*/
$method=|qint64|readBufferSize|

/*
QNetworkRequest request () const
*/
$method=|QNetworkRequest|request|

/*
virtual void setReadBufferSize ( qint64 size )
*/
$method=|void|setReadBufferSize|qint64

/*
void setSslConfiguration ( const QSslConfiguration & config )
*/
$method=|void|setSslConfiguration|const QSslConfiguration &

/*
QSslConfiguration sslConfiguration () const
*/
$method=|QSslConfiguration|sslConfiguration|

/*
QUrl url () const
*/
$method=|QUrl|url|

/*
virtual void close ()
*/
$method=|void|close|

#pragma ENDDUMP
