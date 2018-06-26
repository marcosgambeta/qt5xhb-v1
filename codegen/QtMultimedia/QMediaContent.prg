%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

   METHOD new
   METHOD delete

   METHOD canonicalRequest
   METHOD canonicalResource
   METHOD canonicalUrl
   METHOD isNull
   METHOD playlist
   METHOD resources

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QMediaPlaylist>

$prototype=QMediaContent()
$internalConstructor=|new1|

$prototype=QMediaContent(const QUrl & contentUrl)
$internalConstructor=|new2|const QUrl &

$prototype=QMediaContent(const QNetworkRequest & contentRequest)
$internalConstructor=|new3|const QNetworkRequest &

$prototype=QMediaContent(const QMediaResource & contentResource)
$internalConstructor=|new4|const QMediaResource &

$prototype=QMediaContent(const QMediaResourceList & resources)
$internalConstructor=|new5|const QMediaResourceList &

$prototype=QMediaContent(const QMediaContent & other)
$internalConstructor=|new6|const QMediaContent &

$prototype=QMediaContent(QMediaPlaylist * playlist, const QUrl & contentUrl = QUrl(), bool takeOwnership = false)
$internalConstructor=|new7|QMediaPlaylist *,const QUrl &=QUrl(),bool=false

//[1]QMediaContent()
//[2]QMediaContent(const QUrl & contentUrl)
//[3]QMediaContent(const QNetworkRequest & contentRequest)
//[4]QMediaContent(const QMediaResource & contentResource)
//[5]QMediaContent(const QMediaResourceList & resources)
//[6]QMediaContent(const QMediaContent & other)
//[7]QMediaContent(QMediaPlaylist * playlist, const QUrl & contentUrl = QUrl(), bool takeOwnership = false)

HB_FUNC_STATIC( QMEDIACONTENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QMediaContent_new1();
  }
  else if( ISNUMPAR(1) && ISQURL(1) )
  {
    QMediaContent_new2();
  }
  else if( ISNUMPAR(1) && ISQNETWORKREQUEST(1) )
  {
    QMediaContent_new3();
  }
  else if( ISNUMPAR(1) && ISQMEDIARESOURCE(1) )
  {
    QMediaContent_new4();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QMediaContent_new5();
  }
  else if( ISNUMPAR(1) && ISQMEDIACONTENT(1) )
  {
    QMediaContent_new6();
  }
  else if( ISBETWEEN(1,3) && ISQMEDIAPLAYLIST(1) && (ISQURL(2)||ISNIL(2)) && ISOPTLOG(3) )
  {
    QMediaContent_new7();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QMediaContent()
$deleteMethod

$prototype=QNetworkRequest canonicalRequest() const
$method=|QNetworkRequest|canonicalRequest|

$prototype=QMediaResource canonicalResource() const
$method=|QMediaResource|canonicalResource|

$prototype=QUrl canonicalUrl() const
$method=|QUrl|canonicalUrl|

$prototype=bool isNull() const
$method=|bool|isNull|

$prototype=QMediaPlaylist * playlist() const
$method=|QMediaPlaylist *|playlist|

$prototype=QMediaResourceList resources() const
$method=|QMediaResourceList|resources|

$extraMethods

#pragma ENDDUMP
