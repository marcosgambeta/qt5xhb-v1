%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

%% TODO: check
%% private:
%%     enum Property
%%     {
%%         Url,
%%         Request,
%%         MimeType,
%%         Language,
%%         AudioCodec,
%%         VideoCodec,
%%         DataSize,
%%         AudioBitRate,
%%         VideoBitRate,
%%         SampleRate,
%%         ChannelCount,
%%         Resolution
%%     };
%%     QMap<int, QVariant> values;

#include "hbclass.ch"

$addRequests

$beginClassFrom=

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
   METHOD setResolution
   METHOD setSampleRate
   METHOD setVideoBitRate
   METHOD setVideoCodec
   METHOD url
   METHOD videoBitRate
   METHOD videoCodec

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QSize>

$prototype=QMediaResource()
$internalConstructor=|new1|

$prototype=QMediaResource(const QUrl & url, const QString & mimeType = QString())
$internalConstructor=|new2|const QUrl &,const QString &=QString()

$prototype=QMediaResource(const QNetworkRequest & request, const QString & mimeType = QString())
$internalConstructor=|new3|const QNetworkRequest &,const QString &=QString()

$prototype=QMediaResource(const QMediaResource & other)
$internalConstructor=|new4|const QMediaResource &

//[1]QMediaResource()
//[2]QMediaResource(const QUrl & url, const QString & mimeType = QString())
//[3]QMediaResource(const QNetworkRequest & request, const QString & mimeType = QString())
//[4]QMediaResource(const QMediaResource & other)

HB_FUNC_STATIC( QMEDIARESOURCE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QMediaResource_new1();
  }
  else if( ISBETWEEN(1,2) && ISQURL(1) && ISOPTCHAR(2) )
  {
    QMediaResource_new2();
  }
  else if( ISBETWEEN(1,2) && ISQNETWORKREQUEST(1) && ISOPTCHAR(2) )
  {
    QMediaResource_new3();
  }
  else if( ISNUMPAR(1) && ISQMEDIARESOURCE(1) )
  {
    QMediaResource_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QMediaResource()
$deleteMethod

$prototype=int audioBitRate() const
$method=|int|audioBitRate|

$prototype=QString audioCodec() const
$method=|QString|audioCodec|

$prototype=int channelCount() const
$method=|int|channelCount|

$prototype=qint64 dataSize() const
$method=|qint64|dataSize|

$prototype=bool isNull() const
$method=|bool|isNull|

$prototype=QString language() const
$method=|QString|language|

$prototype=QString mimeType() const
$method=|QString|mimeType|

$prototype=QNetworkRequest request() const
$method=|QNetworkRequest|request|

$prototype=QSize resolution() const
$method=|QSize|resolution|

$prototype=int sampleRate() const
$method=|int|sampleRate|

$prototype=void setAudioBitRate(int rate)
$method=|void|setAudioBitRate|int

$prototype=void setAudioCodec(const QString & codec)
$method=|void|setAudioCodec|const QString &

$prototype=void setChannelCount(int channels)
$method=|void|setChannelCount|int

$prototype=void setDataSize(const qint64 size)
$method=|void|setDataSize|const qint64

$prototype=void setLanguage(const QString & language)
$method=|void|setLanguage|const QString &

$prototype=void setResolution(const QSize & resolution)
$internalMethod=|void|setResolution,setResolution1|const QSize &

$prototype=void setResolution(int width, int height)
$internalMethod=|void|setResolution,setResolution2|int,int

//[1]void setResolution(const QSize & resolution)
//[2]void setResolution(int width, int height)

HB_FUNC_STATIC( QMEDIARESOURCE_SETRESOLUTION )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QMediaResource_setResolution1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QMediaResource_setResolution2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setSampleRate(int frequency)
$method=|void|setSampleRate|int

$prototype=void setVideoBitRate(int rate)
$method=|void|setVideoBitRate|int

$prototype=void setVideoCodec(const QString & codec)
$method=|void|setVideoCodec|const QString &

$prototype=QUrl url() const
$method=|QUrl|url|

$prototype=int videoBitRate() const
$method=|int|videoBitRate|

$prototype=QString videoCodec() const
$method=|QString|videoCodec|

$extraMethods

#pragma ENDDUMP
