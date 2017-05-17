/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QMediaPlayerControlSlots.h"


static SlotsQMediaPlayerControl * s = NULL;

SlotsQMediaPlayerControl::SlotsQMediaPlayerControl(QObject *parent) : QObject(parent)
{
}

SlotsQMediaPlayerControl::~SlotsQMediaPlayerControl()
{
}

void SlotsQMediaPlayerControl::audioAvailableChanged(bool audio)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "audioAvailableChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM paudio = hb_itemPutL( NULL, audio );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, paudio );
    hb_itemRelease( psender );
    hb_itemRelease( paudio );
  }
}

void SlotsQMediaPlayerControl::availablePlaybackRangesChanged(const QMediaTimeRange & ranges)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "availablePlaybackRangesChanged(QMediaTimeRange)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pranges = hb_itemPutPtr( NULL, (QMediaTimeRange *) &ranges );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pranges );
    hb_itemRelease( psender );
    hb_itemRelease( pranges );
  }
}

void SlotsQMediaPlayerControl::bufferStatusChanged(int progress)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "bufferStatusChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pprogress = hb_itemPutNI( NULL, progress );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pprogress );
    hb_itemRelease( psender );
    hb_itemRelease( pprogress );
  }
}

void SlotsQMediaPlayerControl::durationChanged(qint64 duration)
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

void SlotsQMediaPlayerControl::error(int error, const QString & errorString)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(int,QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM perror = hb_itemPutNI( NULL, error );
    PHB_ITEM perrorString = hb_itemPutC( NULL, RQSTRING(errorString) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, perror, perrorString );
    hb_itemRelease( psender );
    hb_itemRelease( perror );
    hb_itemRelease( perrorString );
  }
}

void SlotsQMediaPlayerControl::mediaChanged(const QMediaContent & content)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "mediaChanged(QMediaContent)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcontent = hb_itemPutPtr( NULL, (QMediaContent *) &content );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pcontent );
    hb_itemRelease( psender );
    hb_itemRelease( pcontent );
  }
}

void SlotsQMediaPlayerControl::mediaStatusChanged(QMediaPlayer::MediaStatus status)
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

void SlotsQMediaPlayerControl::mutedChanged(bool mute)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "mutedChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pmute = hb_itemPutL( NULL, mute );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pmute );
    hb_itemRelease( psender );
    hb_itemRelease( pmute );
  }
}

void SlotsQMediaPlayerControl::playbackRateChanged(qreal rate)
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

void SlotsQMediaPlayerControl::positionChanged(qint64 position)
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

void SlotsQMediaPlayerControl::seekableChanged(bool seekable)
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

void SlotsQMediaPlayerControl::stateChanged(QMediaPlayer::State state)
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

void SlotsQMediaPlayerControl::videoAvailableChanged(bool video)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "videoAvailableChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pvideo = hb_itemPutL( NULL, video );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pvideo );
    hb_itemRelease( psender );
    hb_itemRelease( pvideo );
  }
}

void SlotsQMediaPlayerControl::volumeChanged(int volume)
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

HB_FUNC( QMEDIAPLAYERCONTROL_ONAUDIOAVAILABLECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaPlayerControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "audioAvailableChanged(bool)", "audioAvailableChanged(bool)" ) );
}

HB_FUNC( QMEDIAPLAYERCONTROL_ONAVAILABLEPLAYBACKRANGESCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaPlayerControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "availablePlaybackRangesChanged(QMediaTimeRange)", "availablePlaybackRangesChanged(QMediaTimeRange)" ) );
}

HB_FUNC( QMEDIAPLAYERCONTROL_ONBUFFERSTATUSCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaPlayerControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "bufferStatusChanged(int)", "bufferStatusChanged(int)" ) );
}

HB_FUNC( QMEDIAPLAYERCONTROL_ONDURATIONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaPlayerControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "durationChanged(qint64)", "durationChanged(qint64)" ) );
}

HB_FUNC( QMEDIAPLAYERCONTROL_ONERROR )
{
  if( s == NULL )
  {
    s = new SlotsQMediaPlayerControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "error(int,QString)", "error(int,QString)" ) );
}

HB_FUNC( QMEDIAPLAYERCONTROL_ONMEDIACHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaPlayerControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "mediaChanged(QMediaContent)", "mediaChanged(QMediaContent)" ) );
}

HB_FUNC( QMEDIAPLAYERCONTROL_ONMEDIASTATUSCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaPlayerControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "mediaStatusChanged(QMediaPlayer::MediaStatus)", "mediaStatusChanged(QMediaPlayer::MediaStatus)" ) );
}

HB_FUNC( QMEDIAPLAYERCONTROL_ONMUTEDCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaPlayerControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "mutedChanged(bool)", "mutedChanged(bool)" ) );
}

HB_FUNC( QMEDIAPLAYERCONTROL_ONPLAYBACKRATECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaPlayerControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "playbackRateChanged(qreal)", "playbackRateChanged(qreal)" ) );
}

HB_FUNC( QMEDIAPLAYERCONTROL_ONPOSITIONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaPlayerControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "positionChanged(qint64)", "positionChanged(qint64)" ) );
}

HB_FUNC( QMEDIAPLAYERCONTROL_ONSEEKABLECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaPlayerControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "seekableChanged(bool)", "seekableChanged(bool)" ) );
}

HB_FUNC( QMEDIAPLAYERCONTROL_ONSTATECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaPlayerControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "stateChanged(QMediaPlayer::State)", "stateChanged(QMediaPlayer::State)" ) );
}

HB_FUNC( QMEDIAPLAYERCONTROL_ONVIDEOAVAILABLECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaPlayerControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "videoAvailableChanged(bool)", "videoAvailableChanged(bool)" ) );
}

HB_FUNC( QMEDIAPLAYERCONTROL_ONVOLUMECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaPlayerControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "volumeChanged(int)", "volumeChanged(int)" ) );
}
