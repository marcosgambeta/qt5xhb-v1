/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QMEDIACONTENT
REQUEST QNETWORKCONFIGURATION
REQUEST QIODEVICE
REQUEST QMEDIAPLAYLIST

CLASS QMediaPlayer INHERIT QMediaObject

   DATA class_id INIT Class_Id_QMediaPlayer
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD bufferStatus
   METHOD currentMedia
   METHOD currentNetworkConfiguration
   METHOD duration
   METHOD error
   METHOD errorString
   METHOD isAudioAvailable
   METHOD isMuted
   METHOD isSeekable
   METHOD isVideoAvailable
   METHOD media
   METHOD mediaStatus
   METHOD mediaStream
   METHOD playbackRate
   METHOD playlist
   METHOD position
   METHOD setVideoOutput1
   METHOD setVideoOutput2
   METHOD setVideoOutput3
   METHOD setVideoOutput
   METHOD state
   METHOD volume
   METHOD availability
   METHOD pause
   METHOD play
   METHOD setMedia
   METHOD setMuted
   METHOD setNetworkConfigurations
   METHOD setPlaybackRate
   METHOD setPlaylist
   METHOD setPosition
   METHOD setVolume
   METHOD stop
   METHOD hasSupport
   METHOD supportedMimeTypes
   METHOD onAudioAvailableChanged
   METHOD onBufferStatusChanged
   METHOD onCurrentMediaChanged
   METHOD onDurationChanged
   METHOD onError
   METHOD onMediaChanged
   METHOD onMediaStatusChanged
   METHOD onMutedChanged
   METHOD onNetworkConfigurationChanged
   METHOD onPlaybackRateChanged
   METHOD onPositionChanged
   METHOD onSeekableChanged
   METHOD onStateChanged
   METHOD onVideoAvailableChanged
   METHOD onVolumeChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMediaPlayer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QMediaPlayer>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QMediaPlayer>
#endif
#endif

/*
QMediaPlayer(QObject * parent = 0, Flags flags = 0)
*/
HB_FUNC_STATIC( QMEDIAPLAYER_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qtxhb_itemGetPtr(1);
  int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
  QMediaPlayer * o = new QMediaPlayer ( par1,  (QMediaPlayer::Flags) par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QMediaPlayer *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QMEDIAPLAYER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QMediaPlayer * obj = (QMediaPlayer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
#endif
}

/*
int bufferStatus() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_BUFFERSTATUS )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->bufferStatus (  ) );
  }
}


/*
QMediaContent currentMedia() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_CURRENTMEDIA )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaContent * ptr = new QMediaContent( obj->currentMedia (  ) );
    _qt4xhb_createReturnClass ( ptr, "QMEDIACONTENT" );
  }
}


/*
QNetworkConfiguration currentNetworkConfiguration() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_CURRENTNETWORKCONFIGURATION )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkConfiguration * ptr = new QNetworkConfiguration( obj->currentNetworkConfiguration (  ) );
    _qt4xhb_createReturnClass ( ptr, "QNETWORKCONFIGURATION", true );
  }
}


/*
qint64 duration() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_DURATION )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->duration (  ) );
  }
}


/*
Error error() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_ERROR )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->error (  ) );
  }
}


/*
QString errorString() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_ERRORSTRING )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->errorString (  ).toLatin1().data() );
  }
}


/*
bool isAudioAvailable() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_ISAUDIOAVAILABLE )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isAudioAvailable (  ) );
  }
}


/*
bool isMuted() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_ISMUTED )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isMuted (  ) );
  }
}


/*
bool isSeekable() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_ISSEEKABLE )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isSeekable (  ) );
  }
}


/*
bool isVideoAvailable() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_ISVIDEOAVAILABLE )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isVideoAvailable (  ) );
  }
}


/*
QMediaContent media() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_MEDIA )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaContent * ptr = new QMediaContent( obj->media (  ) );
    _qt4xhb_createReturnClass ( ptr, "QMEDIACONTENT" );
  }
}


/*
MediaStatus mediaStatus() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_MEDIASTATUS )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->mediaStatus (  ) );
  }
}


/*
const QIODevice * mediaStream() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_MEDIASTREAM )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QIODevice * ptr = obj->mediaStream (  );
    _qt4xhb_createReturnClass ( ptr, "QIODEVICE" );
  }
}


/*
qreal playbackRate() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_PLAYBACKRATE )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->playbackRate (  ) );
  }
}


/*
QMediaPlaylist * playlist() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_PLAYLIST )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaPlaylist * ptr = obj->playlist (  );
    _qt4xhb_createReturnClass ( ptr, "QMEDIAPLAYLIST" );
  }
}


/*
qint64 position() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_POSITION )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->position (  ) );
  }
}


/*
void setVideoOutput(QVideoWidget * output)
*/
HB_FUNC_STATIC( QMEDIAPLAYER_SETVIDEOOUTPUT1 )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVideoWidget * par1 = (QVideoWidget *) _qtxhb_itemGetPtr(1);
    obj->setVideoOutput ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setVideoOutput(QGraphicsVideoItem * output)
*/
HB_FUNC_STATIC( QMEDIAPLAYER_SETVIDEOOUTPUT2 )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGraphicsVideoItem * par1 = (QGraphicsVideoItem *) _qtxhb_itemGetPtr(1);
    obj->setVideoOutput ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setVideoOutput(QAbstractVideoSurface * surface)
*/
HB_FUNC_STATIC( QMEDIAPLAYER_SETVIDEOOUTPUT3 )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractVideoSurface * par1 = (QAbstractVideoSurface *) _qtxhb_itemGetPtr(1);
    obj->setVideoOutput ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setVideoOutput(QVideoWidget * output)
//[2]void setVideoOutput(QGraphicsVideoItem * output)
//[3]void setVideoOutput(QAbstractVideoSurface * surface)

HB_FUNC_STATIC( QMEDIAPLAYER_SETVIDEOOUTPUT )
{
  if( ISNUMPAR(1) && ISQVIDEOWIDGET(1) )
  {
    HB_FUNC_EXEC( QMEDIAPLAYER_SETVIDEOOUTPUT1 );
  }
  else if( ISNUMPAR(1) && ISQGRAPHICSVIDEOITEM(1) )
  {
    HB_FUNC_EXEC( QMEDIAPLAYER_SETVIDEOOUTPUT2 );
  }
  else if( ISNUMPAR(1) && ISQABSTRACTVIDEOSURFACE(1) )
  {
    HB_FUNC_EXEC( QMEDIAPLAYER_SETVIDEOOUTPUT3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
State state() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_STATE )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->state (  ) );
  }
}


/*
int volume() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_VOLUME )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->volume (  ) );
  }
}


/*
virtual QMultimedia::AvailabilityStatus availability() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_AVAILABILITY )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->availability (  ) );
  }
}


/*
void pause()
*/
HB_FUNC_STATIC( QMEDIAPLAYER_PAUSE )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->pause (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void play()
*/
HB_FUNC_STATIC( QMEDIAPLAYER_PLAY )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->play (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMedia(const QMediaContent & media, QIODevice * stream = 0)
*/
HB_FUNC_STATIC( QMEDIAPLAYER_SETMEDIA )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaContent * par1 = (QMediaContent *) _qtxhb_itemGetPtr(1);
    QIODevice * par2 = ISNIL(2)? 0 : (QIODevice *) _qtxhb_itemGetPtr(2);
    obj->setMedia ( *par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMuted(bool muted)
*/
HB_FUNC_STATIC( QMEDIAPLAYER_SETMUTED )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMuted ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setNetworkConfigurations(const QList<QNetworkConfiguration> & configurations)
*/
HB_FUNC_STATIC( QMEDIAPLAYER_SETNETWORKCONFIGURATIONS )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QNetworkConfiguration> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QNetworkConfiguration *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->setNetworkConfigurations ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPlaybackRate(qreal rate)
*/
HB_FUNC_STATIC( QMEDIAPLAYER_SETPLAYBACKRATE )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setPlaybackRate ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPlaylist(QMediaPlaylist * playlist)
*/
HB_FUNC_STATIC( QMEDIAPLAYER_SETPLAYLIST )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaPlaylist * par1 = (QMediaPlaylist *) _qtxhb_itemGetPtr(1);
    obj->setPlaylist ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPosition(qint64 position)
*/
HB_FUNC_STATIC( QMEDIAPLAYER_SETPOSITION )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPosition ( (qint64) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setVolume(int volume)
*/
HB_FUNC_STATIC( QMEDIAPLAYER_SETVOLUME )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setVolume ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void stop()
*/
HB_FUNC_STATIC( QMEDIAPLAYER_STOP )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->stop (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static QMultimedia::SupportEstimate hasSupport(const QString & mimeType, const QStringList & codecs = QStringList(), Flags flags = 0)
*/
HB_FUNC_STATIC( QMEDIAPLAYER_HASSUPPORT )
{
  QString par1 = QLatin1String( hb_parc(1) );
QStringList par2;
PHB_ITEM aStrings2 = hb_param(2, HB_IT_ARRAY);
int i2;
int nLen2 = hb_arrayLen(aStrings2);
for (i2=0;i2<nLen2;i2++)
{
QString temp = QLatin1String( hb_arrayGetCPtr(aStrings2, i2+1) );
par2 << temp;
}
  int par3 = ISNIL(3)? (int) 0 : hb_parni(3);
  hb_retni( QMediaPlayer::hasSupport ( par1, par2,  (QMediaPlayer::Flags) par3 ) );
}


/*
static QStringList supportedMimeTypes(Flags flags = 0) (deprecated)
*/
HB_FUNC_STATIC( QMEDIAPLAYER_SUPPORTEDMIMETYPES )
{
  int par1 = ISNIL(1)? (int) 0 : hb_parni(1);
  QStringList strl = QMediaPlayer::supportedMimeTypes (  (QMediaPlayer::Flags) par1 );
  _qtxhb_convert_qstringlist_to_array ( strl );
}




#pragma ENDDUMP
