$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
REQUEST QABSTRACTMESSAGEHANDLER
REQUEST QXMLNAMEPOOL
REQUEST QNETWORKACCESSMANAGER
REQUEST QABSTRACTURIRESOLVER
#endif

CLASS QXmlSchema

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD documentUri
   METHOD isValid
   METHOD load1
   METHOD load2
   METHOD load3
   METHOD load
   METHOD messageHandler
   METHOD namePool
   METHOD networkAccessManager
   METHOD setMessageHandler
   METHOD setNetworkAccessManager
   METHOD setUriResolver
   METHOD uriResolver

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

$prototype=QXmlSchema ()
$constructor=|new1|

$prototype=QXmlSchema ( const QXmlSchema & other )
$constructor=|new2|const QXmlSchema &

//[1]QXmlSchema ()
//[2]QXmlSchema ( const QXmlSchema & other )

HB_FUNC_STATIC( QXMLSCHEMA_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QXMLSCHEMA_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQXMLSCHEMA(1) )
  {
    HB_FUNC_EXEC( QXMLSCHEMA_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QUrl documentUri () const
$method=|QUrl|documentUri|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=bool load ( const QUrl & source )
$method=|bool|load,load1|const QUrl &

$prototype=bool load ( QIODevice * source, const QUrl & documentUri = QUrl() )
$method=|bool|load,load2|QIODevice *,const QUrl &=QUrl()

$prototype=bool load ( const QByteArray & data, const QUrl & documentUri = QUrl() )
$method=|bool|load,load3|const QByteArray &,const QUrl &=QUrl()

//[1]bool load ( const QUrl & source )
//[2]bool load ( QIODevice * source, const QUrl & documentUri = QUrl() )
//[3]bool load ( const QByteArray & data, const QUrl & documentUri = QUrl() )

HB_FUNC_STATIC( QXMLSCHEMA_LOAD )
{
  if( ISNUMPAR(1) && ISQURL(1) )
  {
    HB_FUNC_EXEC( QXMLSCHEMA_LOAD1 );
  }
  else if( ISBETWEEN(1,2) && ISQIODEVICE(1) && (ISQURL(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QXMLSCHEMA_LOAD2 );
  }
  else if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && (ISQURL(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QXMLSCHEMA_LOAD3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QAbstractMessageHandler * messageHandler () const
$method=|QAbstractMessageHandler *|messageHandler|

$prototype=QXmlNamePool namePool () const
$method=|QXmlNamePool|namePool|

$prototype=QNetworkAccessManager * networkAccessManager () const
$method=|QNetworkAccessManager *|networkAccessManager|

$prototype=void setMessageHandler ( QAbstractMessageHandler * handler )
$method=|void|setMessageHandler|QAbstractMessageHandler *

$prototype=void setNetworkAccessManager ( QNetworkAccessManager * manager )
$method=|void|setNetworkAccessManager|QNetworkAccessManager *

$prototype=void setUriResolver ( const QAbstractUriResolver * resolver )
$method=|void|setUriResolver|const QAbstractUriResolver *

$prototype=const QAbstractUriResolver * uriResolver () const
$method=|const QAbstractUriResolver *|uriResolver|

$extraMethods

#pragma ENDDUMP
