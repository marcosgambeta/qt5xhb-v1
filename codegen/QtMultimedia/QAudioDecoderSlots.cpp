%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQAudioDecoder::bufferAvailableChanged(bool available)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "bufferAvailableChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pavailable = hb_itemPutL( NULL, available );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pavailable );
    hb_itemRelease( psender );
    hb_itemRelease( pavailable );
  }
}

void SlotsQAudioDecoder::bufferReady()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "bufferReady()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQAudioDecoder::durationChanged(qint64 duration)
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

void SlotsQAudioDecoder::error(QAudioDecoder::Error error)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(QAudioDecoder::Error)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM perror = hb_itemPutNI( NULL, (int) error );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, perror );
    hb_itemRelease( psender );
    hb_itemRelease( perror );
  }
}

void SlotsQAudioDecoder::finished()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "finished()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQAudioDecoder::formatChanged(const QAudioFormat & format)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "formatChanged(QAudioFormat)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pformat = hb_itemPutPtr( NULL, (QAudioFormat *) &format );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pformat );
    hb_itemRelease( psender );
    hb_itemRelease( pformat );
  }
}

void SlotsQAudioDecoder::positionChanged(qint64 position)
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

void SlotsQAudioDecoder::sourceChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sourceChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQAudioDecoder::stateChanged(QAudioDecoder::State state)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "stateChanged(QAudioDecoder::State)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pstate = hb_itemPutNI( NULL, (int) state );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pstate );
    hb_itemRelease( psender );
    hb_itemRelease( pstate );
  }
}

HB_FUNC( QAUDIODECODER_ONBUFFERAVAILABLECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQAudioDecoder(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "bufferAvailableChanged(bool)", "bufferAvailableChanged(bool)" ) );
}

HB_FUNC( QAUDIODECODER_ONBUFFERREADY )
{
  if( s == NULL )
  {
    s = new SlotsQAudioDecoder(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "bufferReady()", "bufferReady()" ) );
}

HB_FUNC( QAUDIODECODER_ONDURATIONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQAudioDecoder(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "durationChanged(qint64)", "durationChanged(qint64)" ) );
}

HB_FUNC( QAUDIODECODER_ONERROR )
{
  if( s == NULL )
  {
    s = new SlotsQAudioDecoder(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "error(QAudioDecoder::Error)", "error(QAudioDecoder::Error)" ) );
}

HB_FUNC( QAUDIODECODER_ONFINISHED )
{
  if( s == NULL )
  {
    s = new SlotsQAudioDecoder(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "finished()", "finished()" ) );
}

HB_FUNC( QAUDIODECODER_ONFORMATCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQAudioDecoder(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "formatChanged(QAudioFormat)", "formatChanged(QAudioFormat)" ) );
}

HB_FUNC( QAUDIODECODER_ONPOSITIONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQAudioDecoder(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "positionChanged(qint64)", "positionChanged(qint64)" ) );
}

HB_FUNC( QAUDIODECODER_ONSOURCECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQAudioDecoder(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "sourceChanged()", "sourceChanged()" ) );
}

HB_FUNC( QAUDIODECODER_ONSTATECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQAudioDecoder(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "stateChanged(QAudioDecoder::State)", "stateChanged(QAudioDecoder::State)" ) );
}

$endSlotsClass
