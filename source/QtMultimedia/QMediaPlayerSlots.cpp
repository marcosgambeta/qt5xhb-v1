/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QMediaPlayerSlots.h"


static SlotsQMediaPlayer * s = NULL;

SlotsQMediaPlayer::SlotsQMediaPlayer(QObject *parent) : QObject(parent)
{
}

SlotsQMediaPlayer::~SlotsQMediaPlayer()
{
}

void SlotsQMediaPlayer::audioAvailableChanged(bool available)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "audioAvailableChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pavailable = hb_itemPutL( NULL, available );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pavailable );
    hb_itemRelease( psender );
    hb_itemRelease( pavailable );
  }
}

void SlotsQMediaPlayer::bufferStatusChanged(int percentFilled)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "bufferStatusChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ppercentFilled = hb_itemPutNI( NULL, percentFilled );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ppercentFilled );
    hb_itemRelease( psender );
    hb_itemRelease( ppercentFilled );
  }
}

void SlotsQMediaPlayer::currentMediaChanged(const QMediaContent & media)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentMediaChanged(QMediaContent)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pmedia = hb_itemPutPtr( NULL, (QMediaContent *) &media );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pmedia );
    hb_itemRelease( psender );
    hb_itemRelease( pmedia );
  }
}

void SlotsQMediaPlayer::durationChanged(qint64 duration)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "durationChanged(qint64)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pduration = hb_itemPutNI( NULL, duration );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pduration );
    hb_itemRelease( psender );
    hb_itemRelease( pduration );
  }
}

void SlotsQMediaPlayer::error(QMediaPlayer::Error error)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(QMediaPlayer::Error)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM perror = hb_itemPutNI( NULL, (int) error );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, perror );
    hb_itemRelease( psender );
    hb_itemRelease( perror );
  }
}

void SlotsQMediaPlayer::mediaChanged(const QMediaContent & media)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "mediaChanged(QMediaContent)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pmedia = hb_itemPutPtr( NULL, (QMediaContent *) &media );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pmedia );
    hb_itemRelease( psender );
    hb_itemRelease( pmedia );
  }
}

void SlotsQMediaPlayer::mediaStatusChanged(QMediaPlayer::MediaStatus status)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "mediaStatusChanged(QMediaPlayer::MediaStatus)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pstatus = hb_itemPutNI( NULL, (int) status );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pstatus );
    hb_itemRelease( psender );
    hb_itemRelease( pstatus );
  }
}

void SlotsQMediaPlayer::mutedChanged(bool muted)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "mutedChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pmuted = hb_itemPutL( NULL, muted );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pmuted );
    hb_itemRelease( psender );
    hb_itemRelease( pmuted );
  }
}

void SlotsQMediaPlayer::networkConfigurationChanged(const QNetworkConfiguration & configuration)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "networkConfigurationChanged(QNetworkConfiguration)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pconfiguration = hb_itemPutPtr( NULL, (QNetworkConfiguration *) &configuration );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pconfiguration );
    hb_itemRelease( psender );
    hb_itemRelease( pconfiguration );
  }
}

void SlotsQMediaPlayer::playbackRateChanged(qreal rate)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "playbackRateChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM prate = hb_itemPutND( NULL, rate );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, prate );
    hb_itemRelease( psender );
    hb_itemRelease( prate );
  }
}

void SlotsQMediaPlayer::positionChanged(qint64 position)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "positionChanged(qint64)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pposition = hb_itemPutNI( NULL, position );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pposition );
    hb_itemRelease( psender );
    hb_itemRelease( pposition );
  }
}

void SlotsQMediaPlayer::seekableChanged(bool seekable)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "seekableChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pseekable = hb_itemPutL( NULL, seekable );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pseekable );
    hb_itemRelease( psender );
    hb_itemRelease( pseekable );
  }
}

void SlotsQMediaPlayer::stateChanged(QMediaPlayer::State state)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "stateChanged(QMediaPlayer::State)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pstate = hb_itemPutNI( NULL, (int) state );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pstate );
    hb_itemRelease( psender );
    hb_itemRelease( pstate );
  }
}

void SlotsQMediaPlayer::videoAvailableChanged(bool videoAvailable)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "videoAvailableChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pvideoAvailable = hb_itemPutL( NULL, videoAvailable );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pvideoAvailable );
    hb_itemRelease( psender );
    hb_itemRelease( pvideoAvailable );
  }
}

void SlotsQMediaPlayer::volumeChanged(int volume)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "volumeChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pvolume = hb_itemPutNI( NULL, volume );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pvolume );
    hb_itemRelease( psender );
    hb_itemRelease( pvolume );
  }
}

HB_FUNC( QMEDIAPLAYER_ONAUDIOAVAILABLECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaPlayer(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "audioAvailableChanged(bool)", "audioAvailableChanged(bool)" ) );
}

HB_FUNC( QMEDIAPLAYER_ONBUFFERSTATUSCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaPlayer(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "bufferStatusChanged(int)", "bufferStatusChanged(int)" ) );
}

HB_FUNC( QMEDIAPLAYER_ONCURRENTMEDIACHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaPlayer(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "currentMediaChanged(QMediaContent)", "currentMediaChanged(QMediaContent)" ) );
}

HB_FUNC( QMEDIAPLAYER_ONDURATIONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaPlayer(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "durationChanged(qint64)", "durationChanged(qint64)" ) );
}

HB_FUNC( QMEDIAPLAYER_ONERROR )
{
  if( s == NULL )
  {
    s = new SlotsQMediaPlayer(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "error(QMediaPlayer::Error)", "error(QMediaPlayer::Error)" ) );
}

HB_FUNC( QMEDIAPLAYER_ONMEDIACHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaPlayer(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "mediaChanged(QMediaContent)", "mediaChanged(QMediaContent)" ) );
}

HB_FUNC( QMEDIAPLAYER_ONMEDIASTATUSCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaPlayer(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "mediaStatusChanged(QMediaPlayer::MediaStatus)", "mediaStatusChanged(QMediaPlayer::MediaStatus)" ) );
}

HB_FUNC( QMEDIAPLAYER_ONMUTEDCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaPlayer(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "mutedChanged(bool)", "mutedChanged(bool)" ) );
}

HB_FUNC( QMEDIAPLAYER_ONNETWORKCONFIGURATIONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaPlayer(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "networkConfigurationChanged(QNetworkConfiguration)", "networkConfigurationChanged(QNetworkConfiguration)" ) );
}

HB_FUNC( QMEDIAPLAYER_ONPLAYBACKRATECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaPlayer(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "playbackRateChanged(qreal)", "playbackRateChanged(qreal)" ) );
}

HB_FUNC( QMEDIAPLAYER_ONPOSITIONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaPlayer(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "positionChanged(qint64)", "positionChanged(qint64)" ) );
}

HB_FUNC( QMEDIAPLAYER_ONSEEKABLECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaPlayer(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "seekableChanged(bool)", "seekableChanged(bool)" ) );
}

HB_FUNC( QMEDIAPLAYER_ONSTATECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaPlayer(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "stateChanged(QMediaPlayer::State)", "stateChanged(QMediaPlayer::State)" ) );
}

HB_FUNC( QMEDIAPLAYER_ONVIDEOAVAILABLECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaPlayer(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "videoAvailableChanged(bool)", "videoAvailableChanged(bool)" ) );
}

HB_FUNC( QMEDIAPLAYER_ONVOLUMECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaPlayer(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "volumeChanged(int)", "volumeChanged(int)" ) );
}
