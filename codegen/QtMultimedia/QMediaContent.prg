$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QNETWORKREQUEST
REQUEST QMEDIARESOURCE
REQUEST QURL
REQUEST QMEDIAPLAYLIST
#endif

CLASS QMediaContent

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new6
   METHOD new7
   METHOD new
   METHOD delete
   METHOD canonicalRequest
   METHOD canonicalResource
   METHOD canonicalUrl
   METHOD isNull
   METHOD playlist
   METHOD resources

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

$prototype=QMediaContent()
$constructor=|new1|

$prototype=QMediaContent(const QUrl & url)
$constructor=|new2|const QUrl &

$prototype=QMediaContent(const QNetworkRequest & request)
$constructor=|new3|const QNetworkRequest &

$prototype=QMediaContent(const QMediaResource & resource)
$constructor=|new4|const QMediaResource &

$prototype=QMediaContent(const QMediaResourceList & resources)
$constructor=|new5|const QMediaResourceList &

$prototype=QMediaContent(const QMediaContent & other)
$constructor=|new6|const QMediaContent &

$prototype=QMediaContent(QMediaPlaylist * playlist, const QUrl & contentUrl = QUrl(), bool takeOwnership = false)
$constructor=|new7|QMediaPlaylist *,const QUrl &=QUrl(),bool=false

//[1]QMediaContent()
//[2]QMediaContent(const QUrl & url)
//[3]QMediaContent(const QNetworkRequest & request)
//[4]QMediaContent(const QMediaResource & resource)
//[5]QMediaContent(const QMediaResourceList & resources)
//[6]QMediaContent(const QMediaContent & other)
//[7]QMediaContent(QMediaPlaylist * playlist, const QUrl & contentUrl = QUrl(), bool takeOwnership = false)

HB_FUNC_STATIC( QMEDIACONTENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QMEDIACONTENT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQURL(1) )
  {
    HB_FUNC_EXEC( QMEDIACONTENT_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQNETWORKREQUEST(1) )
  {
    HB_FUNC_EXEC( QMEDIACONTENT_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQMEDIARESOURCE(1) )
  {
    HB_FUNC_EXEC( QMEDIACONTENT_NEW4 );
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    HB_FUNC_EXEC( QMEDIACONTENT_NEW5 );
  }
  else if( ISNUMPAR(1) && ISQMEDIACONTENT(1) )
  {
    HB_FUNC_EXEC( QMEDIACONTENT_NEW6 );
  }
  else if( ISBETWEEN(1,3) && ISQMEDIAPLAYLIST(1) && (ISQURL(2)||ISNIL(2)) && ISOPTLOG(3) )
  {
    HB_FUNC_EXEC( QMEDIACONTENT_NEW7 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

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
