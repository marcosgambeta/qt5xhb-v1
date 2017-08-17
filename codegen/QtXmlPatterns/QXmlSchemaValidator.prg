$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTMESSAGEHANDLER
REQUEST QXMLNAMEPOOL
REQUEST QNETWORKACCESSMANAGER
REQUEST QXMLSCHEMA
REQUEST QABSTRACTURIRESOLVER
#endif

CLASS QXmlSchemaValidator

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD messageHandler
   METHOD namePool
   METHOD networkAccessManager
   METHOD schema
   METHOD setMessageHandler
   METHOD setNetworkAccessManager
   METHOD setSchema
   METHOD setUriResolver
   METHOD uriResolver
   METHOD validate1
   METHOD validate2
   METHOD validate3
   METHOD validate

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

#include <QXmlSchema>

/*
QXmlSchemaValidator ()
*/
$constructor=|new1|

/*
QXmlSchemaValidator ( const QXmlSchema & schema )
*/
$constructor=|new2|const QXmlSchema &

//[1]QXmlSchemaValidator ()
//[2]QXmlSchemaValidator ( const QXmlSchema & schema )

HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QXMLSCHEMAVALIDATOR_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQXMLSCHEMA(1) )
  {
    HB_FUNC_EXEC( QXMLSCHEMAVALIDATOR_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QAbstractMessageHandler * messageHandler () const
*/
$method=|QAbstractMessageHandler *|messageHandler|

/*
QXmlNamePool namePool () const
*/
$method=|QXmlNamePool|namePool|

/*
QNetworkAccessManager * networkAccessManager () const
*/
$method=|QNetworkAccessManager *|networkAccessManager|

/*
QXmlSchema schema () const
*/
$method=|QXmlSchema|schema|

/*
void setMessageHandler ( QAbstractMessageHandler * handler )
*/
$method=|void|setMessageHandler|QAbstractMessageHandler *

/*
void setNetworkAccessManager ( QNetworkAccessManager * manager )
*/
$method=|void|setNetworkAccessManager|QNetworkAccessManager *

/*
void setSchema ( const QXmlSchema & schema )
*/
$method=|void|setSchema|const QXmlSchema &

/*
void setUriResolver ( const QAbstractUriResolver * resolver )
*/
$method=|void|setUriResolver|const QAbstractUriResolver *

/*
const QAbstractUriResolver * uriResolver () const
*/
$method=|const QAbstractUriResolver *|uriResolver|

/*
bool validate ( const QUrl & source ) const
*/
$method=|bool|validate,validate1|const QUrl &

/*
bool validate ( QIODevice * source, const QUrl & documentUri = QUrl() ) const
*/
$method=|bool|validate,validate2|QIODevice *,const QUrl &=QUrl()

/*
bool validate ( const QByteArray & data, const QUrl & documentUri = QUrl() ) const
*/
$method=|bool|validate,validate3|const QByteArray &,const QUrl &=QUrl()

//[1]bool validate ( const QUrl & source ) const
//[2]bool validate ( QIODevice * source, const QUrl & documentUri = QUrl() ) const
//[3]bool validate ( const QByteArray & data, const QUrl & documentUri = QUrl() ) const

HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_VALIDATE )
{
  if( ISNUMPAR(1) && ISQURL(1) )
  {
    HB_FUNC_EXEC( QXMLSCHEMAVALIDATOR_VALIDATE1 );
  }
  else if( ISBETWEEN(1,2) && ISQIODEVICE(1) && (ISQURL(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QXMLSCHEMAVALIDATOR_VALIDATE2 );
  }
  else if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && (ISQURL(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QXMLSCHEMAVALIDATOR_VALIDATE3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$extraMethods

#pragma ENDDUMP
