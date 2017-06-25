/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QMediaRecorderSlots.h"


static SlotsQMediaRecorder * s = NULL;

SlotsQMediaRecorder::SlotsQMediaRecorder(QObject *parent) : QObject(parent)
{
}

SlotsQMediaRecorder::~SlotsQMediaRecorder()
{
}

void SlotsQMediaRecorder::actualLocationChanged(const QUrl & location)
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

void SlotsQMediaRecorder::availabilityChanged(bool available)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "availabilityChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pavailable = hb_itemPutL( NULL, available );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pavailable );
    hb_itemRelease( psender );
    hb_itemRelease( pavailable );
  }
}

void SlotsQMediaRecorder::availabilityChanged(QMultimedia::AvailabilityStatus availability)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "availabilityChanged(QMultimedia::AvailabilityStatus)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pavailability = hb_itemPutNI( NULL, (int) availability );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pavailability );
    hb_itemRelease( psender );
    hb_itemRelease( pavailability );
  }
}

void SlotsQMediaRecorder::durationChanged(qint64 duration)
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

void SlotsQMediaRecorder::error(QMediaRecorder::Error error)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(QMediaRecorder::Error)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM perror = hb_itemPutNI( NULL, (int) error );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, perror );
    hb_itemRelease( psender );
    hb_itemRelease( perror );
  }
}

void SlotsQMediaRecorder::metaDataAvailableChanged(bool available)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "metaDataAvailableChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pavailable = hb_itemPutL( NULL, available );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pavailable );
    hb_itemRelease( psender );
    hb_itemRelease( pavailable );
  }
}

void SlotsQMediaRecorder::metaDataChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "metaDataChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQMediaRecorder::metaDataChanged(const QString & key, const QVariant & value)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "metaDataChanged(QString,QVariant)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pkey = hb_itemPutC( NULL, QSTRINGTOSTRING(key) );
    PHB_ITEM pvalue = hb_itemPutPtr( NULL, (QVariant *) &value );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pkey, pvalue );
    hb_itemRelease( psender );
    hb_itemRelease( pkey );
    hb_itemRelease( pvalue );
  }
}

void SlotsQMediaRecorder::metaDataWritableChanged(bool writable)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "metaDataWritableChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pwritable = hb_itemPutL( NULL, writable );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pwritable );
    hb_itemRelease( psender );
    hb_itemRelease( pwritable );
  }
}

void SlotsQMediaRecorder::mutedChanged(bool muted)
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

void SlotsQMediaRecorder::stateChanged(QMediaRecorder::State state)
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

void SlotsQMediaRecorder::statusChanged(QMediaRecorder::Status status)
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

void SlotsQMediaRecorder::volumeChanged(qreal volume)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "volumeChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pvolume = hb_itemPutND( NULL, volume );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pvolume );
    hb_itemRelease( psender );
    hb_itemRelease( pvolume );
  }
}

HB_FUNC( QMEDIARECORDER_ONACTUALLOCATIONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaRecorder(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "actualLocationChanged(QUrl)", "actualLocationChanged(QUrl)" ) );
}

HB_FUNC( QMEDIARECORDER_ONAVAILABILITYCHANGED1 )
{
  if( s == NULL )
  {
    s = new SlotsQMediaRecorder(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "availabilityChanged(bool)", "availabilityChanged(bool)" ) );
}

HB_FUNC( QMEDIARECORDER_ONAVAILABILITYCHANGED2 )
{
  if( s == NULL )
  {
    s = new SlotsQMediaRecorder(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "availabilityChanged(QMultimedia::AvailabilityStatus)", "availabilityChanged(QMultimedia::AvailabilityStatus)" ) );
}

HB_FUNC( QMEDIARECORDER_ONDURATIONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaRecorder(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "durationChanged(qint64)", "durationChanged(qint64)" ) );
}

HB_FUNC( QMEDIARECORDER_ONERROR )
{
  if( s == NULL )
  {
    s = new SlotsQMediaRecorder(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "error(QMediaRecorder::Error)", "error(QMediaRecorder::Error)" ) );
}

HB_FUNC( QMEDIARECORDER_ONMETADATAAVAILABLECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaRecorder(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "metaDataAvailableChanged(bool)", "metaDataAvailableChanged(bool)" ) );
}

HB_FUNC( QMEDIARECORDER_ONMETADATACHANGED1 )
{
  if( s == NULL )
  {
    s = new SlotsQMediaRecorder(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "metaDataChanged()", "metaDataChanged()" ) );
}

HB_FUNC( QMEDIARECORDER_ONMETADATACHANGED2 )
{
  if( s == NULL )
  {
    s = new SlotsQMediaRecorder(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "metaDataChanged(QString,QVariant)", "metaDataChanged(QString,QVariant)" ) );
}

HB_FUNC( QMEDIARECORDER_ONMETADATAWRITABLECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaRecorder(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "metaDataWritableChanged(bool)", "metaDataWritableChanged(bool)" ) );
}

HB_FUNC( QMEDIARECORDER_ONMUTEDCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaRecorder(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "mutedChanged(bool)", "mutedChanged(bool)" ) );
}

HB_FUNC( QMEDIARECORDER_ONSTATECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaRecorder(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "stateChanged(QMediaRecorder::State)", "stateChanged(QMediaRecorder::State)" ) );
}

HB_FUNC( QMEDIARECORDER_ONSTATUSCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaRecorder(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "statusChanged(QMediaRecorder::Status)", "statusChanged(QMediaRecorder::Status)" ) );
}

HB_FUNC( QMEDIARECORDER_ONVOLUMECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaRecorder(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "volumeChanged(qreal)", "volumeChanged(qreal)" ) );
}
