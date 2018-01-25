%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

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

$signalMethod=5,1,0|busyChanged()
$signalMethod=5,1,0|activeChanged()
$signalMethod=5,1,0|readingChanged()
$signalMethod=5,1,0|sensorError(int)
$signalMethod=5,1,0|availableSensorsChanged()
$signalMethod=5,1,0|alwaysOnChanged()
$signalMethod=5,1,0|dataRateChanged()
$signalMethod=5,1,0|skipDuplicatesChanged(bool)
$signalMethod=5,1,0|axesOrientationModeChanged(QSensor::AxesOrientationMode)
$signalMethod=5,1,0|currentOrientationChanged(int)
$signalMethod=5,1,0|userOrientationChanged(int)
$signalMethod=5,1,0|maxBufferSizeChanged(int)
$signalMethod=5,1,0|efficientBufferSizeChanged(int)
$signalMethod=5,1,0|bufferSizeChanged(int)

$endSlotsClass
