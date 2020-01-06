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

#include <QtXmlPatterns/QAbstractMessageHandler>
#include <QtNetwork/QNetworkAccessManager>
#include <QtXmlPatterns/QAbstractUriResolver>

$prototype=QXmlSchema ()
$internalConstructor=|new1|

$prototype=QXmlSchema ( const QXmlSchema & other )
$internalConstructor=|new2|const QXmlSchema &

//[1]QXmlSchema ()
//[2]QXmlSchema ( const QXmlSchema & other )

HB_FUNC_STATIC( QXMLSCHEMA_NEW )
{
  if( ISNUMPAR(0) )
  {
    QXmlSchema_new1();
  }
  else if( ISNUMPAR(1) && ISQXMLSCHEMA(1) )
  {
    QXmlSchema_new2();
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
$internalMethod=|bool|load,load1|const QUrl &

$prototype=bool load ( QIODevice * source, const QUrl & documentUri = QUrl() )
$internalMethod=|bool|load,load2|QIODevice *,const QUrl &=QUrl()

$prototype=bool load ( const QByteArray & data, const QUrl & documentUri = QUrl() )
$internalMethod=|bool|load,load3|const QByteArray &,const QUrl &=QUrl()

//[1]bool load ( const QUrl & source )
//[2]bool load ( QIODevice * source, const QUrl & documentUri = QUrl() )
//[3]bool load ( const QByteArray & data, const QUrl & documentUri = QUrl() )

HB_FUNC_STATIC( QXMLSCHEMA_LOAD )
{
  if( ISNUMPAR(1) && ISQURL(1) )
  {
    QXmlSchema_load1();
  }
  else if( ISBETWEEN(1,2) && ISQIODEVICE(1) && (ISQURL(2)||ISNIL(2)) )
  {
    QXmlSchema_load2();
  }
  else if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && (ISQURL(2)||ISNIL(2)) )
  {
    QXmlSchema_load3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=load

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
