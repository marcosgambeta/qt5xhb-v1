/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QMediaRecorderControlSlots.h"


static SlotsQMediaRecorderControl * s = NULL;

SlotsQMediaRecorderControl::SlotsQMediaRecorderControl(QObject *parent) : QObject(parent)
{
}

SlotsQMediaRecorderControl::~SlotsQMediaRecorderControl()
{
}

void SlotsQMediaRecorderControl::actualLocationChanged(const QUrl & location)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "actualLocationChanged(QUrl)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM plocation = hb_itemPutPtr( NULL, (QUrl *) &location );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, plocation );
    hb_itemRelease( psender );
    hb_itemRelease( plocation );
  }
}

void SlotsQMediaRecorderControl::durationChanged(qint64 duration)
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

void SlotsQMediaRecorderControl::error(int error, const QString & errorString)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(int,QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM perror = hb_itemPutNI( NULL, error );
    PHB_ITEM perrorString = hb_itemPutC( NULL, QSTRINGTOSTRING(errorString) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, perror, perrorString );
    hb_itemRelease( psender );
    hb_itemRelease( perror );
    hb_itemRelease( perrorString );
  }
}

void SlotsQMediaRecorderControl::mutedChanged(bool muted)
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

void SlotsQMediaRecorderControl::stateChanged(QMediaRecorder::State state)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "stateChanged(QMediaRecorder::State)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pstate = hb_itemPutNI( NULL, (int) state );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pstate );
    hb_itemRelease( psender );
    hb_itemRelease( pstate );
  }
}

void SlotsQMediaRecorderControl::statusChanged(QMediaRecorder::Status status)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "statusChanged(QMediaRecorder::Status)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pstatus = hb_itemPutNI( NULL, (int) status );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pstatus );
    hb_itemRelease( psender );
    hb_itemRelease( pstatus );
  }
}

void SlotsQMediaRecorderControl::volumeChanged(qreal gain)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "volumeChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pgain = hb_itemPutND( NULL, gain );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pgain );
    hb_itemRelease( psender );
    hb_itemRelease( pgain );
  }
}

HB_FUNC( QMEDIARECORDERCONTROL_ONACTUALLOCATIONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaRecorderControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "actualLocationChanged(QUrl)", "actualLocationChanged(QUrl)" ) );
}

HB_FUNC( QMEDIARECORDERCONTROL_ONDURATIONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaRecorderControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "durationChanged(qint64)", "durationChanged(qint64)" ) );
}

HB_FUNC( QMEDIARECORDERCONTROL_ONERROR )
{
  if( s == NULL )
  {
    s = new SlotsQMediaRecorderControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "error(int,QString)", "error(int,QString)" ) );
}

HB_FUNC( QMEDIARECORDERCONTROL_ONMUTEDCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaRecorderControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "mutedChanged(bool)", "mutedChanged(bool)" ) );
}

HB_FUNC( QMEDIARECORDERCONTROL_ONSTATECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaRecorderControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "stateChanged(QMediaRecorder::State)", "stateChanged(QMediaRecorder::State)" ) );
}

HB_FUNC( QMEDIARECORDERCONTROL_ONSTATUSCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaRecorderControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "statusChanged(QMediaRecorder::Status)", "statusChanged(QMediaRecorder::Status)" ) );
}

HB_FUNC( QMEDIARECORDERCONTROL_ONVOLUMECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaRecorderControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "volumeChanged(qreal)", "volumeChanged(qreal)" ) );
}
