%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQRadioTuner::stateChanged(QRadioTuner::State state)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "stateChanged(QRadioTuner::State)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pstate = hb_itemPutNI( NULL, (int) state );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pstate );
    hb_itemRelease( psender );
    hb_itemRelease( pstate );
  }
}

void SlotsQRadioTuner::bandChanged(QRadioTuner::Band band)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "bandChanged(QRadioTuner::Band)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pband = hb_itemPutNI( NULL, (int) band );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pband );
    hb_itemRelease( psender );
    hb_itemRelease( pband );
  }
}

void SlotsQRadioTuner::frequencyChanged(int frequency)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "frequencyChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pfrequency = hb_itemPutNI( NULL, frequency );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pfrequency );
    hb_itemRelease( psender );
    hb_itemRelease( pfrequency );
  }
}

void SlotsQRadioTuner::stereoStatusChanged(bool stereo)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "stereoStatusChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pstereo = hb_itemPutL( NULL, stereo );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pstereo );
    hb_itemRelease( psender );
    hb_itemRelease( pstereo );
  }
}

void SlotsQRadioTuner::searchingChanged(bool searching)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "searchingChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM psearching = hb_itemPutL( NULL, searching );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, psearching );
    hb_itemRelease( psender );
    hb_itemRelease( psearching );
  }
}

void SlotsQRadioTuner::signalStrengthChanged(int signalStrength)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "signalStrengthChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM psignalStrength = hb_itemPutNI( NULL, signalStrength );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, psignalStrength );
    hb_itemRelease( psender );
    hb_itemRelease( psignalStrength );
  }
}

void SlotsQRadioTuner::volumeChanged(int volume)
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

void SlotsQRadioTuner::mutedChanged(bool muted)
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

void SlotsQRadioTuner::stationFound(int frequency, QString stationId)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "stationFound(int,QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pfrequency = hb_itemPutNI( NULL, frequency );
    PHB_ITEM pstationId = hb_itemPutC( NULL, (const char *) stationId.toLatin1().data() );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pfrequency, pstationId );
    hb_itemRelease( psender );
    hb_itemRelease( pfrequency );
    hb_itemRelease( pstationId );
  }
}

void SlotsQRadioTuner::antennaConnectedChanged(bool connectionStatus)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "antennaConnectedChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pconnectionStatus = hb_itemPutL( NULL, connectionStatus );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pconnectionStatus );
    hb_itemRelease( psender );
    hb_itemRelease( pconnectionStatus );
  }
}

void SlotsQRadioTuner::error(QRadioTuner::Error error)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(QRadioTuner::Error)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM perror = hb_itemPutNI( NULL, (int) error );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, perror );
    hb_itemRelease( psender );
    hb_itemRelease( perror );
  }
}

HB_FUNC( QRADIOTUNER_ONSTATECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQRadioTuner(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "stateChanged(QRadioTuner::State)", "stateChanged(QRadioTuner::State)" ) );
}

HB_FUNC( QRADIOTUNER_ONBANDCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQRadioTuner(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "bandChanged(QRadioTuner::Band)", "bandChanged(QRadioTuner::Band)" ) );
}

HB_FUNC( QRADIOTUNER_ONFREQUENCYCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQRadioTuner(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "frequencyChanged(int)", "frequencyChanged(int)" ) );
}

HB_FUNC( QRADIOTUNER_ONSTEREOSTATUSCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQRadioTuner(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "stereoStatusChanged(bool)", "stereoStatusChanged(bool)" ) );
}

HB_FUNC( QRADIOTUNER_ONSEARCHINGCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQRadioTuner(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "searchingChanged(bool)", "searchingChanged(bool)" ) );
}

HB_FUNC( QRADIOTUNER_ONSIGNALSTRENGTHCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQRadioTuner(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "signalStrengthChanged(int)", "signalStrengthChanged(int)" ) );
}

HB_FUNC( QRADIOTUNER_ONVOLUMECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQRadioTuner(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "volumeChanged(int)", "volumeChanged(int)" ) );
}

HB_FUNC( QRADIOTUNER_ONMUTEDCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQRadioTuner(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "mutedChanged(bool)", "mutedChanged(bool)" ) );
}

HB_FUNC( QRADIOTUNER_ONSTATIONFOUND )
{
  if( s == NULL )
  {
    s = new SlotsQRadioTuner(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "stationFound(int,QString)", "stationFound(int,QString)" ) );
}

HB_FUNC( QRADIOTUNER_ONANTENNACONNECTEDCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQRadioTuner(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "antennaConnectedChanged(bool)", "antennaConnectedChanged(bool)" ) );
}

HB_FUNC( QRADIOTUNER_ONERROR )
{
  if( s == NULL )
  {
    s = new SlotsQRadioTuner(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "error(QRadioTuner::Error)", "error(QRadioTuner::Error)" ) );
}

$endSlotsClass
