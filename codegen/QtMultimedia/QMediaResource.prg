$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QNETWORKREQUEST
REQUEST QSIZE
REQUEST QURL
#endif

CLASS QMediaResource

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD audioBitRate
   METHOD audioCodec
   METHOD channelCount
   METHOD dataSize
   METHOD isNull
   METHOD language
   METHOD mimeType
   METHOD request
   METHOD resolution
   METHOD sampleRate
   METHOD setAudioBitRate
   METHOD setAudioCodec
   METHOD setChannelCount
   METHOD setDataSize
   METHOD setLanguage
   METHOD setResolution1
   METHOD setResolution2
   METHOD setResolution
   METHOD setSampleRate
   METHOD setVideoBitRate
   METHOD setVideoCodec
   METHOD url
   METHOD videoBitRate
   METHOD videoCodec

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

#include <QSize>

/*
QMediaResource()
*/
$constructor=|new1|

/*
QMediaResource(const QUrl & url, const QString & mimeType = QString())
*/
$constructor=|new2|const QUrl &,const QString &=QString()

/*
QMediaResource(const QNetworkRequest & request, const QString & mimeType = QString())
*/
$constructor=|new3|const QNetworkRequest &,const QString &=QString()

/*
QMediaResource(const QMediaResource & other)
*/
$constructor=|new4|const QMediaResource &

//[1]QMediaResource()
//[2]QMediaResource(const QUrl & url, const QString & mimeType = QString())
//[3]QMediaResource(const QNetworkRequest & request, const QString & mimeType = QString())
//[4]QMediaResource(const QMediaResource & other)

HB_FUNC_STATIC( QMEDIARESOURCE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QMEDIARESOURCE_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISQURL(1) && ISOPTCHAR(2) )
  {
    HB_FUNC_EXEC( QMEDIARESOURCE_NEW2 );
  }
  else if( ISBETWEEN(1,2) && ISQNETWORKREQUEST(1) && ISOPTCHAR(2) )
  {
    HB_FUNC_EXEC( QMEDIARESOURCE_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQMEDIARESOURCE(1) )
  {
    HB_FUNC_EXEC( QMEDIARESOURCE_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
int audioBitRate() const
*/
$method=|int|audioBitRate|

/*
QString audioCodec() const
*/
$method=|QString|audioCodec|

/*
int channelCount() const
*/
$method=|int|channelCount|

/*
qint64 dataSize() const
*/
$method=|qint64|dataSize|

/*
bool isNull() const
*/
$method=|bool|isNull|

/*
QString language() const
*/
$method=|QString|language|

/*
QString mimeType() const
*/
$method=|QString|mimeType|

/*
QNetworkRequest request() const
*/
$method=|QNetworkRequest|request|

/*
QSize resolution() const
*/
$method=|QSize|resolution|

/*
int sampleRate() const
*/
$method=|int|sampleRate|

/*
void setAudioBitRate(int rate)
*/
$method=|void|setAudioBitRate|int

/*
void setAudioCodec(const QString & codec)
*/
$method=|void|setAudioCodec|const QString &

/*
void setChannelCount(int channels)
*/
$method=|void|setChannelCount|int

/*
void setDataSize(const qint64 size)
*/
$method=|void|setDataSize|const qint64

/*
void setLanguage(const QString & language)
*/
$method=|void|setLanguage|const QString &

/*
void setResolution(const QSize & resolution)
*/
$method=|void|setResolution,setResolution1|const QSize &

/*
void setResolution(int width, int height)
*/
$method=|void|setResolution,setResolution2|int,int

//[1]void setResolution(const QSize & resolution)
//[2]void setResolution(int width, int height)

HB_FUNC_STATIC( QMEDIARESOURCE_SETRESOLUTION )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    HB_FUNC_EXEC( QMEDIARESOURCE_SETRESOLUTION1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QMEDIARESOURCE_SETRESOLUTION2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setSampleRate(int sampleRate)
*/
$method=|void|setSampleRate|int

/*
void setVideoBitRate(int rate)
*/
$method=|void|setVideoBitRate|int

/*
void setVideoCodec(const QString & codec)
*/
$method=|void|setVideoCodec|const QString &

/*
QUrl url() const
*/
$method=|QUrl|url|

/*
int videoBitRate() const
*/
$method=|int|videoBitRate|

/*
QString videoCodec() const
*/
$method=|QString|videoCodec|

$extraMethods

#pragma ENDDUMP
