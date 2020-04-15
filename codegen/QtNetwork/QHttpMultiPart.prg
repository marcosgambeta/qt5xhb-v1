%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtNetwork

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QHttpMultiPart(QObject *parent = Q_NULLPTR)
$internalConstructor=|new1|QObject *=0

$prototype=explicit QHttpMultiPart(ContentType contentType, QObject *parent = Q_NULLPTR)
$internalConstructor=|new2|QHttpMultiPart::ContentType,QObject *=0

/*
[1]explicit QHttpMultiPart(QObject *parent = Q_NULLPTR)
[2]explicit QHttpMultiPart(ContentType contentType, QObject *parent = Q_NULLPTR)
*/

HB_FUNC_STATIC( QHTTPMULTIPART_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QHttpMultiPart_new1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTQOBJECT(2) )
  {
    QHttpMultiPart_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QHttpMultiPart()
$deleteMethod

$prototype=void append ( const QHttpPart & httpPart )
$method=|void|append|const QHttpPart &

$prototype=QByteArray boundary () const
$method=|QByteArray|boundary|

$prototype=void setBoundary ( const QByteArray & boundary )
$method=|void|setBoundary|const QByteArray &

$prototype=void setContentType ( ContentType contentType )
$method=|void|setContentType|QHttpMultiPart::ContentType

#pragma ENDDUMP
