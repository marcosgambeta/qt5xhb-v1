$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMEDIACONTENT
REQUEST QNETWORKCONFIGURATION
REQUEST QIODEVICE
REQUEST QMEDIAPLAYLIST
#endif

CLASS QMediaPlayer INHERIT QMediaObject

   DATA self_destruction INIT .F.

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

$destructor

#pragma BEGINDUMP

$includes

/*
QMediaPlayer(QObject * parent = 0, Flags flags = 0)
*/
HB_FUNC_STATIC( QMEDIAPLAYER_NEW )
{
  int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
  QMediaPlayer * o = new QMediaPlayer ( OPQOBJECT(1,0), (QMediaPlayer::Flags) par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
int bufferStatus() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_BUFFERSTATUS )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->bufferStatus () );
  }
}


/*
QMediaContent currentMedia() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_CURRENTMEDIA )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaContent * ptr = new QMediaContent( obj->currentMedia () );
    _qt5xhb_createReturnClass ( ptr, "QMEDIACONTENT" );
  }
}


/*
QNetworkConfiguration currentNetworkConfiguration() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_CURRENTNETWORKCONFIGURATION )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkConfiguration * ptr = new QNetworkConfiguration( obj->currentNetworkConfiguration () );
    _qt5xhb_createReturnClass ( ptr, "QNETWORKCONFIGURATION", true );
  }
}


/*
qint64 duration() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_DURATION )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQINT64( obj->duration () );
  }
}


/*
Error error() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_ERROR )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->error () );
  }
}


/*
QString errorString() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_ERRORSTRING )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->errorString () );
  }
}


/*
bool isAudioAvailable() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_ISAUDIOAVAILABLE )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isAudioAvailable () );
  }
}


/*
bool isMuted() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_ISMUTED )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isMuted () );
  }
}


/*
bool isSeekable() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_ISSEEKABLE )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isSeekable () );
  }
}


/*
bool isVideoAvailable() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_ISVIDEOAVAILABLE )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isVideoAvailable () );
  }
}


/*
QMediaContent media() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_MEDIA )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaContent * ptr = new QMediaContent( obj->media () );
    _qt5xhb_createReturnClass ( ptr, "QMEDIACONTENT" );
  }
}


/*
MediaStatus mediaStatus() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_MEDIASTATUS )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->mediaStatus () );
  }
}


/*
const QIODevice * mediaStream() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_MEDIASTREAM )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QIODevice * ptr = obj->mediaStream ();
    _qt5xhb_createReturnClass ( ptr, "QIODEVICE" );
  }
}


/*
qreal playbackRate() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_PLAYBACKRATE )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->playbackRate () );
  }
}


/*
QMediaPlaylist * playlist() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_PLAYLIST )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaPlaylist * ptr = obj->playlist ();
    _qt5xhb_createReturnClass ( ptr, "QMEDIAPLAYLIST" );
  }
}


/*
qint64 position() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_POSITION )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQINT64( obj->position () );
  }
}


/*
void setVideoOutput(QVideoWidget * output)
*/
HB_FUNC_STATIC( QMEDIAPLAYER_SETVIDEOOUTPUT1 )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVideoWidget * par1 = (QVideoWidget *) _qt5xhb_itemGetPtr(1);
    obj->setVideoOutput ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setVideoOutput(QGraphicsVideoItem * output)
*/
HB_FUNC_STATIC( QMEDIAPLAYER_SETVIDEOOUTPUT2 )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGraphicsVideoItem * par1 = (QGraphicsVideoItem *) _qt5xhb_itemGetPtr(1);
    obj->setVideoOutput ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setVideoOutput(QAbstractVideoSurface * surface)
*/
HB_FUNC_STATIC( QMEDIAPLAYER_SETVIDEOOUTPUT3 )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractVideoSurface * par1 = (QAbstractVideoSurface *) _qt5xhb_itemGetPtr(1);
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
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->state () );
  }
}


/*
int volume() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_VOLUME )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->volume () );
  }
}


/*
virtual QMultimedia::AvailabilityStatus availability() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_AVAILABILITY )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->availability () );
  }
}


/*
void pause()
*/
HB_FUNC_STATIC( QMEDIAPLAYER_PAUSE )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->pause ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void play()
*/
HB_FUNC_STATIC( QMEDIAPLAYER_PLAY )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->play ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMedia(const QMediaContent & media, QIODevice * stream = 0)
*/
HB_FUNC_STATIC( QMEDIAPLAYER_SETMEDIA )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIODevice * par2 = ISNIL(2)? 0 : (QIODevice *) _qt5xhb_itemGetPtr(2);
    obj->setMedia ( *PQMEDIACONTENT(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMuted(bool muted)
*/
HB_FUNC_STATIC( QMEDIAPLAYER_SETMUTED )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMuted ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setNetworkConfigurations(const QList<QNetworkConfiguration> & configurations)
*/
HB_FUNC_STATIC( QMEDIAPLAYER_SETNETWORKCONFIGURATIONS )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();
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
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPlaybackRate ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPlaylist(QMediaPlaylist * playlist)
*/
HB_FUNC_STATIC( QMEDIAPLAYER_SETPLAYLIST )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaPlaylist * par1 = (QMediaPlaylist *) _qt5xhb_itemGetPtr(1);
    obj->setPlaylist ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPosition(qint64 position)
*/
HB_FUNC_STATIC( QMEDIAPLAYER_SETPOSITION )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPosition ( PQINT64(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setVolume(int volume)
*/
HB_FUNC_STATIC( QMEDIAPLAYER_SETVOLUME )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setVolume ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void stop()
*/
HB_FUNC_STATIC( QMEDIAPLAYER_STOP )
{
  QMediaPlayer * obj = (QMediaPlayer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->stop ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static QMultimedia::SupportEstimate hasSupport(const QString & mimeType, const QStringList & codecs = QStringList(), Flags flags = 0)
*/
HB_FUNC_STATIC( QMEDIAPLAYER_HASSUPPORT )
{
  int par3 = ISNIL(3)? (int) 0 : hb_parni(3);
  hb_retni( QMediaPlayer::hasSupport ( PQSTRING(1), OPQSTRINGLIST(2,QStringList()), (QMediaPlayer::Flags) par3 ) );
}


/*
static QStringList supportedMimeTypes(Flags flags = 0) (deprecated)
*/
HB_FUNC_STATIC( QMEDIAPLAYER_SUPPORTEDMIMETYPES )
{
  int par1 = ISNIL(1)? (int) 0 : hb_parni(1);
  RQSTRINGLIST( QMediaPlayer::supportedMimeTypes ( (QMediaPlayer::Flags) par1 ) );
}




#pragma ENDDUMP
