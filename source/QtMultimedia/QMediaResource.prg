/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
//#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QNETWORKREQUEST
REQUEST QSIZE
REQUEST QURL
#endif

CLASS QMediaResource

   DATA pointer
   //DATA class_id INIT Class_Id_QMediaResource
   DATA class_flags INIT 0
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

PROCEDURE destroyObject () CLASS QMediaResource
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QMediaResource>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QMediaResource>
#endif

#include <QSize>

/*
QMediaResource()
*/
HB_FUNC_STATIC( QMEDIARESOURCE_NEW1 )
{
  QMediaResource * o = new QMediaResource (  );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QMediaResource(const QUrl & url, const QString & mimeType = QString())
*/
HB_FUNC_STATIC( QMEDIARESOURCE_NEW2 )
{
  QUrl * par1 = (QUrl *) _qt5xhb_itemGetPtr(1);
  QString par2 = ISNIL(2)? QString() : QLatin1String( hb_parc(2) );
  QMediaResource * o = new QMediaResource ( *par1, par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QMediaResource(const QNetworkRequest & request, const QString & mimeType = QString())
*/
HB_FUNC_STATIC( QMEDIARESOURCE_NEW3 )
{
  QNetworkRequest * par1 = (QNetworkRequest *) _qt5xhb_itemGetPtr(1);
  QString par2 = ISNIL(2)? QString() : QLatin1String( hb_parc(2) );
  QMediaResource * o = new QMediaResource ( *par1, par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QMediaResource(const QMediaResource & other)
*/
HB_FUNC_STATIC( QMEDIARESOURCE_NEW4 )
{
  QMediaResource * par1 = (QMediaResource *) _qt5xhb_itemGetPtr(1);
  QMediaResource * o = new QMediaResource ( *par1 );
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

HB_FUNC_STATIC( QMEDIARESOURCE_DELETE )
{
  QMediaResource * obj = (QMediaResource *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
int audioBitRate() const
*/
HB_FUNC_STATIC( QMEDIARESOURCE_AUDIOBITRATE )
{
  QMediaResource * obj = (QMediaResource *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->audioBitRate (  ) );
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
    hb_retc( (const char *) obj->audioCodec (  ).toLatin1().data() );
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
    hb_retni( obj->channelCount (  ) );
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
    hb_retni( obj->dataSize (  ) );
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
    hb_retl( obj->isNull (  ) );
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
    hb_retc( (const char *) obj->language (  ).toLatin1().data() );
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
    hb_retc( (const char *) obj->mimeType (  ).toLatin1().data() );
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
    QNetworkRequest * ptr = new QNetworkRequest( obj->request (  ) );
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
    QSize * ptr = new QSize( obj->resolution (  ) );
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
    hb_retni( obj->sampleRate (  ) );
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
    obj->setAudioBitRate ( (int) hb_parni(1) );
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
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setAudioCodec ( par1 );
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
    obj->setChannelCount ( (int) hb_parni(1) );
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
    obj->setDataSize ( (qint64) hb_parni(1) );
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
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setLanguage ( par1 );
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
    QSize * par1 = (QSize *) _qt5xhb_itemGetPtr(1);
    obj->setResolution ( *par1 );
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
    obj->setResolution ( (int) hb_parni(1), (int) hb_parni(2) );
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
    obj->setSampleRate ( (int) hb_parni(1) );
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
    obj->setVideoBitRate ( (int) hb_parni(1) );
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
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setVideoCodec ( par1 );
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
    QUrl * ptr = new QUrl( obj->url (  ) );
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
    hb_retni( obj->videoBitRate (  ) );
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
    hb_retc( (const char *) obj->videoCodec (  ).toLatin1().data() );
  }
}



HB_FUNC_STATIC( QMEDIARESOURCE_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QMEDIARESOURCE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QMEDIARESOURCE_NEWFROM );
}

HB_FUNC_STATIC( QMEDIARESOURCE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QMEDIARESOURCE_NEWFROM );
}

HB_FUNC_STATIC( QMEDIARESOURCE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QMEDIARESOURCE_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP
