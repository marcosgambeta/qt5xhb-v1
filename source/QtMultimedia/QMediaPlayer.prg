/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QIODEVICE
REQUEST QMEDIACONTENT
REQUEST QMEDIAPLAYLIST
REQUEST QNETWORKCONFIGURATION
#endif

CLASS QMediaPlayer INHERIT QMediaObject

   METHOD new
   METHOD delete
   METHOD media
   METHOD setMedia
   METHOD currentMedia
   METHOD playlist
   METHOD setPlaylist
   METHOD duration
   METHOD position
   METHOD setPosition
   METHOD volume
   METHOD setVolume
   METHOD isMuted
   METHOD setMuted
   METHOD bufferStatus
   METHOD isAudioAvailable
   METHOD isVideoAvailable
   METHOD isSeekable
   METHOD playbackRate
   METHOD state
   METHOD mediaStatus
   METHOD audioRole
   METHOD setAudioRole
   METHOD errorString
   METHOD currentNetworkConfiguration
   METHOD error
   METHOD mediaStream
   METHOD setVideoOutput
   METHOD availability
   METHOD pause
   METHOD play
   METHOD setNetworkConfigurations
   METHOD setPlaybackRate
   METHOD stop
   METHOD hasSupport
   METHOD supportedMimeTypes
   METHOD supportedAudioRoles

   METHOD onAudioAvailableChanged
   METHOD onAudioRoleChanged
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

PROCEDURE destroyObject() CLASS QMediaPlayer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QMediaPlayer>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtMultimedia/QMediaPlayer>
#endif

#include <QtMultimedia/QMediaPlaylist>

/*
explicit QMediaPlayer(QObject *parent = Q_NULLPTR, Flags flags = Flags())
*/
HB_FUNC_STATIC( QMEDIAPLAYER_NEW )
{
  if( ISBETWEEN(0,2) && (ISQOBJECT(1)||ISNIL(1)) && (ISNUM(2)||ISNIL(2)) )
  {
    QMediaPlayer * obj = new QMediaPlayer( OPQOBJECT(1,0), ISNIL(2)? (QMediaPlayer::Flags) 0 : (QMediaPlayer::Flags) hb_parni(2) );
    Qt5xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
~QMediaPlayer()
*/
HB_FUNC_STATIC( QMEDIAPLAYER_DELETE )
{
  QMediaPlayer * obj = (QMediaPlayer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Qt5xHb::Events_disconnect_all_events( obj, true );
    Qt5xHb::Signals_disconnect_all_signals( obj, true );
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
QMediaContent media() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_MEDIA )
{
  QMediaPlayer * obj = (QMediaPlayer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QMediaContent * ptr = new QMediaContent( obj->media() );
      Qt5xHb::createReturnClass( ptr, "QMEDIACONTENT", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setMedia(const QMediaContent &media, QIODevice *stream = Q_NULLPTR)
*/
HB_FUNC_STATIC( QMEDIAPLAYER_SETMEDIA )
{
  QMediaPlayer * obj = (QMediaPlayer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISQMEDIACONTENT(1) && (ISQIODEVICE(2)||ISNIL(2)) )
    {
#endif
      obj->setMedia( *PQMEDIACONTENT(1), OPQIODEVICE(2,0) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QMediaContent currentMedia() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_CURRENTMEDIA )
{
  QMediaPlayer * obj = (QMediaPlayer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QMediaContent * ptr = new QMediaContent( obj->currentMedia() );
      Qt5xHb::createReturnClass( ptr, "QMEDIACONTENT", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QMediaPlaylist * playlist() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_PLAYLIST )
{
  QMediaPlayer * obj = (QMediaPlayer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QMediaPlaylist * ptr = obj->playlist();
      Qt5xHb::createReturnQObjectClass( ptr, "QMEDIAPLAYLIST" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setPlaylist(QMediaPlaylist * playlist)
*/
HB_FUNC_STATIC( QMEDIAPLAYER_SETPLAYLIST )
{
  QMediaPlayer * obj = (QMediaPlayer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMEDIAPLAYLIST(1) )
    {
#endif
      obj->setPlaylist( PQMEDIAPLAYLIST(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
qint64 duration() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_DURATION )
{
  QMediaPlayer * obj = (QMediaPlayer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->duration() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
qint64 position() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_POSITION )
{
  QMediaPlayer * obj = (QMediaPlayer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->position() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setPosition(qint64 position)
*/
HB_FUNC_STATIC( QMEDIAPLAYER_SETPOSITION )
{
  QMediaPlayer * obj = (QMediaPlayer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setPosition( PQINT64(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int volume() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_VOLUME )
{
  QMediaPlayer * obj = (QMediaPlayer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->volume() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setVolume(int volume)
*/
HB_FUNC_STATIC( QMEDIAPLAYER_SETVOLUME )
{
  QMediaPlayer * obj = (QMediaPlayer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setVolume( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isMuted() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_ISMUTED )
{
  QMediaPlayer * obj = (QMediaPlayer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isMuted() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setMuted(bool muted)
*/
HB_FUNC_STATIC( QMEDIAPLAYER_SETMUTED )
{
  QMediaPlayer * obj = (QMediaPlayer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setMuted( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int bufferStatus() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_BUFFERSTATUS )
{
  QMediaPlayer * obj = (QMediaPlayer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->bufferStatus() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isAudioAvailable() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_ISAUDIOAVAILABLE )
{
  QMediaPlayer * obj = (QMediaPlayer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isAudioAvailable() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isVideoAvailable() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_ISVIDEOAVAILABLE )
{
  QMediaPlayer * obj = (QMediaPlayer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isVideoAvailable() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isSeekable() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_ISSEEKABLE )
{
  QMediaPlayer * obj = (QMediaPlayer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isSeekable() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
qreal playbackRate() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_PLAYBACKRATE )
{
  QMediaPlayer * obj = (QMediaPlayer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->playbackRate() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
State state() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_STATE )
{
  QMediaPlayer * obj = (QMediaPlayer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->state() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
MediaStatus mediaStatus() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_MEDIASTATUS )
{
  QMediaPlayer * obj = (QMediaPlayer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->mediaStatus() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QAudio::Role audioRole() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_AUDIOROLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  QMediaPlayer * obj = (QMediaPlayer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->audioRole() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setAudioRole(QAudio::Role audioRole)
*/
HB_FUNC_STATIC( QMEDIAPLAYER_SETAUDIOROLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  QMediaPlayer * obj = (QMediaPlayer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setAudioRole( (QAudio::Role) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QString errorString() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_ERRORSTRING )
{
  QMediaPlayer * obj = (QMediaPlayer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->errorString() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QNetworkConfiguration currentNetworkConfiguration() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_CURRENTNETWORKCONFIGURATION )
{
  QMediaPlayer * obj = (QMediaPlayer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QNetworkConfiguration * ptr = new QNetworkConfiguration( obj->currentNetworkConfiguration() );
      Qt5xHb::createReturnClass( ptr, "QNETWORKCONFIGURATION", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
Error error() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_ERROR )
{
  QMediaPlayer * obj = (QMediaPlayer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->error() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
const QIODevice * mediaStream() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_MEDIASTREAM )
{
  QMediaPlayer * obj = (QMediaPlayer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QIODevice * ptr = obj->mediaStream();
      Qt5xHb::createReturnQObjectClass( ptr, "QIODEVICE" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setVideoOutput(QVideoWidget * output)
*/
void QMediaPlayer_setVideoOutput1()
{
  QMediaPlayer * obj = (QMediaPlayer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setVideoOutput( PQVIDEOWIDGET(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setVideoOutput(QGraphicsVideoItem * output)
*/
void QMediaPlayer_setVideoOutput2()
{
  QMediaPlayer * obj = (QMediaPlayer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setVideoOutput( PQGRAPHICSVIDEOITEM(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setVideoOutput(QAbstractVideoSurface * surface)
*/
void QMediaPlayer_setVideoOutput3()
{
  QMediaPlayer * obj = (QMediaPlayer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setVideoOutput( PQABSTRACTVIDEOSURFACE(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
[1]void setVideoOutput(QVideoWidget * output)
[2]void setVideoOutput(QGraphicsVideoItem * output)
[3]void setVideoOutput(QAbstractVideoSurface * surface)
*/

HB_FUNC_STATIC( QMEDIAPLAYER_SETVIDEOOUTPUT )
{
  if( ISNUMPAR(1) && ISQVIDEOWIDGET(1) )
  {
    QMediaPlayer_setVideoOutput1();
  }
  else if( ISNUMPAR(1) && ISQGRAPHICSVIDEOITEM(1) )
  {
    QMediaPlayer_setVideoOutput2();
  }
  else if( ISNUMPAR(1) && ISQABSTRACTVIDEOSURFACE(1) )
  {
    QMediaPlayer_setVideoOutput3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual QMultimedia::AvailabilityStatus availability() const override
*/
HB_FUNC_STATIC( QMEDIAPLAYER_AVAILABILITY )
{
  QMediaPlayer * obj = (QMediaPlayer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->availability() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void pause()
*/
HB_FUNC_STATIC( QMEDIAPLAYER_PAUSE )
{
  QMediaPlayer * obj = (QMediaPlayer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->pause();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void play()
*/
HB_FUNC_STATIC( QMEDIAPLAYER_PLAY )
{
  QMediaPlayer * obj = (QMediaPlayer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->play();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setNetworkConfigurations(const QList<QNetworkConfiguration> & configurations)
*/
HB_FUNC_STATIC( QMEDIAPLAYER_SETNETWORKCONFIGURATIONS )
{
  QMediaPlayer * obj = (QMediaPlayer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISARRAY(1) )
    {
#endif
      QList<QNetworkConfiguration> par1;
      PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
      int i1;
      int nLen1 = hb_arrayLen(aList1);
      for (i1=0;i1<nLen1;i1++)
      {
        par1 << *(QNetworkConfiguration *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
      }
      obj->setNetworkConfigurations( par1 );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPlaybackRate(qreal rate)
*/
HB_FUNC_STATIC( QMEDIAPLAYER_SETPLAYBACKRATE )
{
  QMediaPlayer * obj = (QMediaPlayer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setPlaybackRate( PQREAL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void stop()
*/
HB_FUNC_STATIC( QMEDIAPLAYER_STOP )
{
  QMediaPlayer * obj = (QMediaPlayer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->stop();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static QMultimedia::SupportEstimate hasSupport(const QString &mimeType, const QStringList& codecs = QStringList(), Flags flags = Flags())
*/
HB_FUNC_STATIC( QMEDIAPLAYER_HASSUPPORT )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN(1,3) && ISCHAR(1) && (ISARRAY(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
#endif
    RENUM( QMediaPlayer::hasSupport( PQSTRING(1), OPQSTRINGLIST(2,QStringList()), ISNIL(3)? (QMediaPlayer::Flags) 0 : (QMediaPlayer::Flags) hb_parni(3) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QStringList supportedMimeTypes(Flags flags = Flags())
*/
HB_FUNC_STATIC( QMEDIAPLAYER_SUPPORTEDMIMETYPES )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
#endif
    RQSTRINGLIST( QMediaPlayer::supportedMimeTypes( ISNIL(1)? (QMediaPlayer::Flags) 0 : (QMediaPlayer::Flags) hb_parni(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
QList<QAudio::Role> supportedAudioRoles() const
*/
HB_FUNC_STATIC( QMEDIAPLAYER_SUPPORTEDAUDIOROLES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  QMediaPlayer * obj = (QMediaPlayer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QAudio::Role> list = obj->supportedAudioRoles();
      PHB_ITEM pArray = hb_itemArrayNew(0);
      for( int i = 0; i < list.count(); i++ )
      {
        PHB_ITEM pItem = hb_itemPutNI( NULL, (int) list[i] );
        hb_arrayAddForward( pArray, pItem );
        hb_itemRelease(pItem);
      }
      hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
bool bind(QObject *) override
*/

/*
void unbind(QObject *) override
*/

void QMediaPlayerSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QMEDIAPLAYER_ONAUDIOAVAILABLECHANGED )
{
  QMediaPlayerSlots_connect_signal( "audioAvailableChanged(bool)", "audioAvailableChanged(bool)" );
}

HB_FUNC_STATIC( QMEDIAPLAYER_ONAUDIOROLECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  QMediaPlayerSlots_connect_signal( "audioRoleChanged(QAudio::Role)", "audioRoleChanged(QAudio::Role)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QMEDIAPLAYER_ONBUFFERSTATUSCHANGED )
{
  QMediaPlayerSlots_connect_signal( "bufferStatusChanged(int)", "bufferStatusChanged(int)" );
}

HB_FUNC_STATIC( QMEDIAPLAYER_ONCURRENTMEDIACHANGED )
{
  QMediaPlayerSlots_connect_signal( "currentMediaChanged(QMediaContent)", "currentMediaChanged(QMediaContent)" );
}

HB_FUNC_STATIC( QMEDIAPLAYER_ONDURATIONCHANGED )
{
  QMediaPlayerSlots_connect_signal( "durationChanged(qint64)", "durationChanged(qint64)" );
}

HB_FUNC_STATIC( QMEDIAPLAYER_ONERROR )
{
  QMediaPlayerSlots_connect_signal( "error(QMediaPlayer::Error)", "error(QMediaPlayer::Error)" );
}

HB_FUNC_STATIC( QMEDIAPLAYER_ONMEDIACHANGED )
{
  QMediaPlayerSlots_connect_signal( "mediaChanged(QMediaContent)", "mediaChanged(QMediaContent)" );
}

HB_FUNC_STATIC( QMEDIAPLAYER_ONMEDIASTATUSCHANGED )
{
  QMediaPlayerSlots_connect_signal( "mediaStatusChanged(QMediaPlayer::MediaStatus)", "mediaStatusChanged(QMediaPlayer::MediaStatus)" );
}

HB_FUNC_STATIC( QMEDIAPLAYER_ONMUTEDCHANGED )
{
  QMediaPlayerSlots_connect_signal( "mutedChanged(bool)", "mutedChanged(bool)" );
}

HB_FUNC_STATIC( QMEDIAPLAYER_ONNETWORKCONFIGURATIONCHANGED )
{
  QMediaPlayerSlots_connect_signal( "networkConfigurationChanged(QNetworkConfiguration)", "networkConfigurationChanged(QNetworkConfiguration)" );
}

HB_FUNC_STATIC( QMEDIAPLAYER_ONPLAYBACKRATECHANGED )
{
  QMediaPlayerSlots_connect_signal( "playbackRateChanged(qreal)", "playbackRateChanged(qreal)" );
}

HB_FUNC_STATIC( QMEDIAPLAYER_ONPOSITIONCHANGED )
{
  QMediaPlayerSlots_connect_signal( "positionChanged(qint64)", "positionChanged(qint64)" );
}

HB_FUNC_STATIC( QMEDIAPLAYER_ONSEEKABLECHANGED )
{
  QMediaPlayerSlots_connect_signal( "seekableChanged(bool)", "seekableChanged(bool)" );
}

HB_FUNC_STATIC( QMEDIAPLAYER_ONSTATECHANGED )
{
  QMediaPlayerSlots_connect_signal( "stateChanged(QMediaPlayer::State)", "stateChanged(QMediaPlayer::State)" );
}

HB_FUNC_STATIC( QMEDIAPLAYER_ONVIDEOAVAILABLECHANGED )
{
  QMediaPlayerSlots_connect_signal( "videoAvailableChanged(bool)", "videoAvailableChanged(bool)" );
}

HB_FUNC_STATIC( QMEDIAPLAYER_ONVOLUMECHANGED )
{
  QMediaPlayerSlots_connect_signal( "volumeChanged(int)", "volumeChanged(int)" );
}

#pragma ENDDUMP
