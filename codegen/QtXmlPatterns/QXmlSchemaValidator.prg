%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtXmlPatterns

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtXmlPatterns/QXmlSchema>
#include <QtXmlPatterns/QAbstractMessageHandler>
#include <QtNetwork/QNetworkAccessManager>
#include <QtXmlPatterns/QAbstractUriResolver>

$prototype=QXmlSchemaValidator ()
$internalConstructor=|new1|

$prototype=QXmlSchemaValidator ( const QXmlSchema & schema )
$internalConstructor=|new2|const QXmlSchema &

//[1]QXmlSchemaValidator ()
//[2]QXmlSchemaValidator ( const QXmlSchema & schema )

HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_NEW )
{
  if( ISNUMPAR(0) )
  {
    QXmlSchemaValidator_new1();
  }
  else if( ISNUMPAR(1) && ISQXMLSCHEMA(1) )
  {
    QXmlSchemaValidator_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QAbstractMessageHandler * messageHandler () const
$method=|QAbstractMessageHandler *|messageHandler|

$prototype=QXmlNamePool namePool () const
$method=|QXmlNamePool|namePool|

$prototype=QNetworkAccessManager * networkAccessManager () const
$method=|QNetworkAccessManager *|networkAccessManager|

$prototype=QXmlSchema schema () const
$method=|QXmlSchema|schema|

$prototype=void setMessageHandler ( QAbstractMessageHandler * handler )
$method=|void|setMessageHandler|QAbstractMessageHandler *

$prototype=void setNetworkAccessManager ( QNetworkAccessManager * manager )
$method=|void|setNetworkAccessManager|QNetworkAccessManager *

$prototype=void setSchema ( const QXmlSchema & schema )
$method=|void|setSchema|const QXmlSchema &

$prototype=void setUriResolver ( const QAbstractUriResolver * resolver )
$method=|void|setUriResolver|const QAbstractUriResolver *

$prototype=const QAbstractUriResolver * uriResolver () const
$method=|const QAbstractUriResolver *|uriResolver|

$prototype=bool validate ( const QUrl & source ) const
$internalMethod=|bool|validate,validate1|const QUrl &

$prototype=bool validate ( QIODevice * source, const QUrl & documentUri = QUrl() ) const
$internalMethod=|bool|validate,validate2|QIODevice *,const QUrl &=QUrl()

$prototype=bool validate ( const QByteArray & data, const QUrl & documentUri = QUrl() ) const
$internalMethod=|bool|validate,validate3|const QByteArray &,const QUrl &=QUrl()

//[1]bool validate ( const QUrl & source ) const
//[2]bool validate ( QIODevice * source, const QUrl & documentUri = QUrl() ) const
//[3]bool validate ( const QByteArray & data, const QUrl & documentUri = QUrl() ) const

HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_VALIDATE )
{
  if( ISNUMPAR(1) && ISQURL(1) )
  {
    QXmlSchemaValidator_validate1();
  }
  else if( ISBETWEEN(1,2) && ISQIODEVICE(1) && (ISQURL(2)||ISNIL(2)) )
  {
    QXmlSchemaValidator_validate2();
  }
  else if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && (ISQURL(2)||ISNIL(2)) )
  {
    QXmlSchemaValidator_validate3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=validate

$extraMethods

#pragma ENDDUMP
