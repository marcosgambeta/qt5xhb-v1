%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtNetwork

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QHttpPart ()
$internalConstructor=|new1|

$prototype=QHttpPart ( const QHttpPart & other )
$internalConstructor=|new2|const QHttpPart &

//[1]QHttpPart ()
//[2]QHttpPart ( const QHttpPart & other )

HB_FUNC_STATIC( QHTTPPART_NEW )
{
  if( ISNUMPAR(0) )
  {
    QHttpPart_new1();
  }
  else if( ISNUMPAR(1) && ISQHTTPPART(1) )
  {
    QHttpPart_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QHttpPart()
$deleteMethod

$prototype=void setBody ( const QByteArray & body )
$method=|void|setBody|const QByteArray &

$prototype=void setBodyDevice ( QIODevice * device )
$method=|void|setBodyDevice|QIODevice *

$prototype=void setHeader ( QNetworkRequest::KnownHeaders header, const QVariant & value )
$method=|void|setHeader|QNetworkRequest::KnownHeaders,const QVariant &

$prototype=void setRawHeader ( const QByteArray & headerName, const QByteArray & headerValue )
$method=|void|setRawHeader|const QByteArray &,const QByteArray &

$prototype=void swap(QHttpPart &other) Q_DECL_NOTHROW
$method=|void|swap|QHttpPart &

$extraMethods

#pragma ENDDUMP
