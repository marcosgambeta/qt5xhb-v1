%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

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

$prototype=QNetworkCookie ( const QByteArray & name = QByteArray(), const QByteArray & value = QByteArray() )
$constructor=|new1|const QByteArray &=QByteArray(),const QByteArray &=QByteArray()

$prototype=QNetworkCookie ( const QNetworkCookie & other )
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

$prototype=QString domain () const
$method=|QString|domain|

$prototype=QDateTime expirationDate () const
$method=|QDateTime|expirationDate|

$prototype=bool isHttpOnly () const
$method=|bool|isHttpOnly|

$prototype=bool isSecure () const
$method=|bool|isSecure|

$prototype=bool isSessionCookie () const
$method=|bool|isSessionCookie|

$prototype=QByteArray name () const
$method=|QByteArray|name|

$prototype=QString path () const
$method=|QString|path|

$prototype=void setDomain ( const QString & domain )
$method=|void|setDomain|const QString &

$prototype=void setExpirationDate ( const QDateTime & date )
$method=|void|setExpirationDate|const QDateTime &

$prototype=void setHttpOnly ( bool enable )
$method=|void|setHttpOnly|bool

$prototype=void setName ( const QByteArray & cookieName )
$method=|void|setName|const QByteArray &

$prototype=void setPath ( const QString & path )
$method=|void|setPath|const QString &

$prototype=void setSecure ( bool enable )
$method=|void|setSecure|bool

$prototype=void setValue ( const QByteArray & value )
$method=|void|setValue|const QByteArray &

$prototype=QByteArray toRawForm ( RawForm form = Full ) const
$method=|QByteArray|toRawForm|QNetworkCookie::RawForm=QNetworkCookie::Full

$prototype=QByteArray value () const
$method=|QByteArray|value|

$prototype=static QList<QNetworkCookie> parseCookies ( const QByteArray & cookieString )
$staticMethod=|QList<QNetworkCookie>|parseCookies|const QByteArray &

$extraMethods

#pragma ENDDUMP
