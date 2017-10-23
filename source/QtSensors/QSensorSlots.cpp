/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QSensorSlots.h"


static SlotsQSensor * s = NULL;

SlotsQSensor::SlotsQSensor(QObject *parent) : QObject(parent)
{
}

SlotsQSensor::~SlotsQSensor()
{
}

void SlotsQSensor::busyChanged()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "busyChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
#endif
}

void SlotsQSensor::activeChanged()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "activeChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
#endif
}

void SlotsQSensor::readingChanged()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "readingChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
#endif
}

void SlotsQSensor::sensorError(int error)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sensorError(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM perror = hb_itemPutNI( NULL, error );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, perror );
    hb_itemRelease( psender );
    hb_itemRelease( perror );
  }
#endif
}

void SlotsQSensor::availableSensorsChanged()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "availableSensorsChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
#endif
}

void SlotsQSensor::alwaysOnChanged()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "alwaysOnChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
#endif
}

void SlotsQSensor::dataRateChanged()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "dataRateChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
#endif
}

void SlotsQSensor::skipDuplicatesChanged(bool skipDuplicates)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "skipDuplicatesChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pskipDuplicates = hb_itemPutL( NULL, skipDuplicates );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pskipDuplicates );
    hb_itemRelease( psender );
    hb_itemRelease( pskipDuplicates );
  }
#endif
}

void SlotsQSensor::axesOrientationModeChanged(QSensor::AxesOrientationMode axesOrientationMode)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "axesOrientationModeChanged(QSensor::AxesOrientationMode)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM paxesOrientationMode = hb_itemPutNI( NULL, (int) axesOrientationMode );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, paxesOrientationMode );
    hb_itemRelease( psender );
    hb_itemRelease( paxesOrientationMode );
  }
#endif
}

void SlotsQSensor::currentOrientationChanged(int currentOrientation)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentOrientationChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcurrentOrientation = hb_itemPutNI( NULL, currentOrientation );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pcurrentOrientation );
    hb_itemRelease( psender );
    hb_itemRelease( pcurrentOrientation );
  }
#endif
}

void SlotsQSensor::userOrientationChanged(int userOrientation)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "userOrientationChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM puserOrientation = hb_itemPutNI( NULL, userOrientation );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, puserOrientation );
    hb_itemRelease( psender );
    hb_itemRelease( puserOrientation );
  }
#endif
}

void SlotsQSensor::maxBufferSizeChanged(int maxBufferSize)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "maxBufferSizeChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pmaxBufferSize = hb_itemPutNI( NULL, maxBufferSize );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pmaxBufferSize );
    hb_itemRelease( psender );
    hb_itemRelease( pmaxBufferSize );
  }
#endif
}

void SlotsQSensor::efficientBufferSizeChanged(int efficientBufferSize)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "efficientBufferSizeChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pefficientBufferSize = hb_itemPutNI( NULL, efficientBufferSize );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pefficientBufferSize );
    hb_itemRelease( psender );
    hb_itemRelease( pefficientBufferSize );
  }
#endif
}

void SlotsQSensor::bufferSizeChanged(int bufferSize)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "bufferSizeChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pbufferSize = hb_itemPutNI( NULL, bufferSize );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pbufferSize );
    hb_itemRelease( psender );
    hb_itemRelease( pbufferSize );
  }
#endif
}

HB_FUNC( QSENSOR_ONBUSYCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( s == NULL )
  {
    s = new SlotsQSensor(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "busyChanged()", "busyChanged()" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QSENSOR_ONACTIVECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( s == NULL )
  {
    s = new SlotsQSensor(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "activeChanged()", "activeChanged()" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QSENSOR_ONREADINGCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( s == NULL )
  {
    s = new SlotsQSensor(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "readingChanged()", "readingChanged()" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QSENSOR_ONSENSORERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( s == NULL )
  {
    s = new SlotsQSensor(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "sensorError(int)", "sensorError(int)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QSENSOR_ONAVAILABLESENSORSCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( s == NULL )
  {
    s = new SlotsQSensor(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "availableSensorsChanged()", "availableSensorsChanged()" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QSENSOR_ONALWAYSONCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( s == NULL )
  {
    s = new SlotsQSensor(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "alwaysOnChanged()", "alwaysOnChanged()" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QSENSOR_ONDATARATECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( s == NULL )
  {
    s = new SlotsQSensor(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "dataRateChanged()", "dataRateChanged()" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QSENSOR_ONSKIPDUPLICATESCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( s == NULL )
  {
    s = new SlotsQSensor(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "skipDuplicatesChanged(bool)", "skipDuplicatesChanged(bool)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QSENSOR_ONAXESORIENTATIONMODECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( s == NULL )
  {
    s = new SlotsQSensor(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "axesOrientationModeChanged(QSensor::AxesOrientationMode)", "axesOrientationModeChanged(QSensor::AxesOrientationMode)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QSENSOR_ONCURRENTORIENTATIONCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( s == NULL )
  {
    s = new SlotsQSensor(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "currentOrientationChanged(int)", "currentOrientationChanged(int)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QSENSOR_ONUSERORIENTATIONCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( s == NULL )
  {
    s = new SlotsQSensor(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "userOrientationChanged(int)", "userOrientationChanged(int)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QSENSOR_ONMAXBUFFERSIZECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( s == NULL )
  {
    s = new SlotsQSensor(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "maxBufferSizeChanged(int)", "maxBufferSizeChanged(int)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QSENSOR_ONEFFICIENTBUFFERSIZECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( s == NULL )
  {
    s = new SlotsQSensor(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "efficientBufferSizeChanged(int)", "efficientBufferSizeChanged(int)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QSENSOR_ONBUFFERSIZECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( s == NULL )
  {
    s = new SlotsQSensor(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "bufferSizeChanged(int)", "bufferSizeChanged(int)" ) );
#else
  hb_retl(false);
#endif
}
