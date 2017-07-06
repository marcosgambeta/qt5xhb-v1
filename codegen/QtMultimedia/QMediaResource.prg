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
HB_FUNC_STATIC( QMEDIARESOURCE_NEW1 )
{
  QMediaResource * o = new QMediaResource ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QMediaResource(const QUrl & url, const QString & mimeType = QString())
*/
HB_FUNC_STATIC( QMEDIARESOURCE_NEW2 )
{
  QMediaResource * o = new QMediaResource ( *PQURL(1), OPQSTRING(2,QString()) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QMediaResource(const QNetworkRequest & request, const QString & mimeType = QString())
*/
HB_FUNC_STATIC( QMEDIARESOURCE_NEW3 )
{
  QMediaResource * o = new QMediaResource ( *PQNETWORKREQUEST(1), OPQSTRING(2,QString()) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QMediaResource(const QMediaResource & other)
*/
HB_FUNC_STATIC( QMEDIARESOURCE_NEW4 )
{
  QMediaResource * o = new QMediaResource ( *PQMEDIARESOURCE(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}


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
HB_FUNC_STATIC( QMEDIARESOURCE_AUDIOBITRATE )
{
  QMediaResource * obj = (QMediaResource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->audioBitRate () );
  }
}


/*
QString audioCodec() const
*/
HB_FUNC_STATIC( QMEDIARESOURCE_AUDIOCODEC )
{
  QMediaResource * obj = (QMediaResource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->audioCodec () );
  }
}


/*
int channelCount() const
*/
HB_FUNC_STATIC( QMEDIARESOURCE_CHANNELCOUNT )
{
  QMediaResource * obj = (QMediaResource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->channelCount () );
  }
}


/*
qint64 dataSize() const
*/
HB_FUNC_STATIC( QMEDIARESOURCE_DATASIZE )
{
  QMediaResource * obj = (QMediaResource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQINT64( obj->dataSize () );
  }
}


/*
bool isNull() const
*/
HB_FUNC_STATIC( QMEDIARESOURCE_ISNULL )
{
  QMediaResource * obj = (QMediaResource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isNull () );
  }
}


/*
QString language() const
*/
HB_FUNC_STATIC( QMEDIARESOURCE_LANGUAGE )
{
  QMediaResource * obj = (QMediaResource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->language () );
  }
}


/*
QString mimeType() const
*/
HB_FUNC_STATIC( QMEDIARESOURCE_MIMETYPE )
{
  QMediaResource * obj = (QMediaResource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->mimeType () );
  }
}


/*
QNetworkRequest request() const
*/
HB_FUNC_STATIC( QMEDIARESOURCE_REQUEST )
{
  QMediaResource * obj = (QMediaResource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkRequest * ptr = new QNetworkRequest( obj->request () );
    _qt5xhb_createReturnClass ( ptr, "QNETWORKREQUEST", true );
  }
}


/*
QSize resolution() const
*/
HB_FUNC_STATIC( QMEDIARESOURCE_RESOLUTION )
{
  QMediaResource * obj = (QMediaResource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->resolution () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
int sampleRate() const
*/
HB_FUNC_STATIC( QMEDIARESOURCE_SAMPLERATE )
{
  QMediaResource * obj = (QMediaResource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->sampleRate () );
  }
}


/*
void setAudioBitRate(int rate)
*/
HB_FUNC_STATIC( QMEDIARESOURCE_SETAUDIOBITRATE )
{
  QMediaResource * obj = (QMediaResource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAudioBitRate ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAudioCodec(const QString & codec)
*/
HB_FUNC_STATIC( QMEDIARESOURCE_SETAUDIOCODEC )
{
  QMediaResource * obj = (QMediaResource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAudioCodec ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setChannelCount(int channels)
*/
HB_FUNC_STATIC( QMEDIARESOURCE_SETCHANNELCOUNT )
{
  QMediaResource * obj = (QMediaResource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setChannelCount ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDataSize(const qint64 size)
*/
HB_FUNC_STATIC( QMEDIARESOURCE_SETDATASIZE )
{
  QMediaResource * obj = (QMediaResource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDataSize ( (qint64) hb_parni(1) ); // TODO: usar macro ?
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLanguage(const QString & language)
*/
HB_FUNC_STATIC( QMEDIARESOURCE_SETLANGUAGE )
{
  QMediaResource * obj = (QMediaResource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setLanguage ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setResolution(const QSize & resolution)
*/
HB_FUNC_STATIC( QMEDIARESOURCE_SETRESOLUTION1 )
{
  QMediaResource * obj = (QMediaResource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setResolution ( *PQSIZE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setResolution(int width, int height)
*/
HB_FUNC_STATIC( QMEDIARESOURCE_SETRESOLUTION2 )
{
  QMediaResource * obj = (QMediaResource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setResolution ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


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
HB_FUNC_STATIC( QMEDIARESOURCE_SETSAMPLERATE )
{
  QMediaResource * obj = (QMediaResource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSampleRate ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setVideoBitRate(int rate)
*/
HB_FUNC_STATIC( QMEDIARESOURCE_SETVIDEOBITRATE )
{
  QMediaResource * obj = (QMediaResource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setVideoBitRate ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setVideoCodec(const QString & codec)
*/
HB_FUNC_STATIC( QMEDIARESOURCE_SETVIDEOCODEC )
{
  QMediaResource * obj = (QMediaResource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setVideoCodec ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QUrl url() const
*/
HB_FUNC_STATIC( QMEDIARESOURCE_URL )
{
  QMediaResource * obj = (QMediaResource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->url () );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
}


/*
int videoBitRate() const
*/
HB_FUNC_STATIC( QMEDIARESOURCE_VIDEOBITRATE )
{
  QMediaResource * obj = (QMediaResource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->videoBitRate () );
  }
}


/*
QString videoCodec() const
*/
HB_FUNC_STATIC( QMEDIARESOURCE_VIDEOCODEC )
{
  QMediaResource * obj = (QMediaResource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->videoCodec () );
  }
}



$extraMethods

#pragma ENDDUMP
