%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

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

#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
void SlotsQMediaPlayer::audioRoleChanged(QAudio::Role role)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "audioRoleChanged(QAudio::Role)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM prole = hb_itemPutNI( NULL, (int) role );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, prole );
    hb_itemRelease( psender );
    hb_itemRelease( prole );
  }
}
#endif

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

$signalMethod=|audioAvailableChanged(bool)
$signalMethod=5,6,0|audioRoleChanged(QAudio::Role)
$signalMethod=|bufferStatusChanged(int)
$signalMethod=|currentMediaChanged(QMediaContent)
$signalMethod=|durationChanged(qint64)
$signalMethod=|error(QMediaPlayer::Error)
$signalMethod=|mediaChanged(QMediaContent)
$signalMethod=|mediaStatusChanged(QMediaPlayer::MediaStatus)
$signalMethod=|mutedChanged(bool)
$signalMethod=|networkConfigurationChanged(QNetworkConfiguration)
$signalMethod=|playbackRateChanged(qreal)
$signalMethod=|positionChanged(qint64)
$signalMethod=|seekableChanged(bool)
$signalMethod=|stateChanged(QMediaPlayer::State)
$signalMethod=|videoAvailableChanged(bool)
$signalMethod=|volumeChanged(int)

$endSlotsClass
