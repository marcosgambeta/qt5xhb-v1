$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDATETIME
REQUEST QBYTEARRAY
#endif

CLASS QNetworkCookie

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD domain
   METHOD expirationDate
   METHOD isHttpOnly
   METHOD isSecure
   METHOD isSessionCookie
   METHOD name
   METHOD path
   METHOD setDomain
   METHOD setExpirationDate
   METHOD setHttpOnly
   METHOD setName
   METHOD setPath
   METHOD setSecure
   METHOD setValue
   METHOD toRawForm
   METHOD value
   METHOD parseCookies

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QDateTime>

/*
QNetworkCookie ( const QByteArray & name = QByteArray(), const QByteArray & value = QByteArray() )
*/
$constructor=|new1|const QByteArray &=QByteArray(),const QByteArray &=QByteArray()

/*
QNetworkCookie ( const QNetworkCookie & other )
*/
$constructor=|new2|const QNetworkCookie &

//[1]QNetworkCookie ( const QByteArray & name = QByteArray(), const QByteArray & value = QByteArray() )
//[2]QNetworkCookie ( const QNetworkCookie & other )

HB_FUNC_STATIC( QNETWORKCOOKIE_NEW )
{
  if( ISBETWEEN(0,2) && ISOPTQBYTEARRAY(1) && ISOPTQBYTEARRAY(2) )
  {
    HB_FUNC_EXEC( QNETWORKCOOKIE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQNETWORKCOOKIE(1) )
  {
    HB_FUNC_EXEC( QNETWORKCOOKIE_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QString domain () const
*/
$method=|QString|domain|

/*
QDateTime expirationDate () const
*/
$method=|QDateTime|expirationDate|

/*
bool isHttpOnly () const
*/
$method=|bool|isHttpOnly|

/*
bool isSecure () const
*/
$method=|bool|isSecure|

/*
bool isSessionCookie () const
*/
$method=|bool|isSessionCookie|

/*
QByteArray name () const
*/
$method=|QByteArray|name|

/*
QString path () const
*/
$method=|QString|path|

/*
void setDomain ( const QString & domain )
*/
$method=|void|setDomain|const QString &

/*
void setExpirationDate ( const QDateTime & date )
*/
$method=|void|setExpirationDate|const QDateTime &

/*
void setHttpOnly ( bool enable )
*/
$method=|void|setHttpOnly|bool

/*
void setName ( const QByteArray & cookieName )
*/
$method=|void|setName|const QByteArray &

/*
void setPath ( const QString & path )
*/
$method=|void|setPath|const QString &

/*
void setSecure ( bool enable )
*/
$method=|void|setSecure|bool

/*
void setValue ( const QByteArray & value )
*/
$method=|void|setValue|const QByteArray &

/*
QByteArray toRawForm ( RawForm form = Full ) const
*/
$method=|QByteArray|toRawForm|QNetworkCookie::RawForm=QNetworkCookie::Full

/*
QByteArray value () const
*/
$method=|QByteArray|value|

/*
static QList<QNetworkCookie> parseCookies ( const QByteArray & cookieString )
*/
$staticMethod=|QList<QNetworkCookie>|parseCookies|const QByteArray &

$extraMethods

#pragma ENDDUMP
