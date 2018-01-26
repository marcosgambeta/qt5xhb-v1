%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

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

$slot=|metaDataChanged()

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

$signalMethod=|actualLocationChanged(QUrl)
$beginGroup
$signalMethod=|availabilityChanged(bool)
$signalMethod=|availabilityChanged(QMultimedia::AvailabilityStatus)
$endGroup
$signalMethod=|durationChanged(qint64)
$signalMethod=|error(QMediaRecorder::Error)
$signalMethod=|metaDataAvailableChanged(bool)
$beginGroup
$signalMethod=|metaDataChanged()
$signalMethod=|metaDataChanged(QString,QVariant)
$endGroup
$signalMethod=|metaDataWritableChanged(bool)
$signalMethod=|mutedChanged(bool)
$signalMethod=|stateChanged(QMediaRecorder::State)
$signalMethod=|statusChanged(QMediaRecorder::Status)
$signalMethod=|volumeChanged(qreal)

$endSlotsClass
