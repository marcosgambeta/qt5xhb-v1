%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQAudioInputSelectorControl::activeInputChanged(const QString & name)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "activeInputChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pname = hb_itemPutC( NULL, QSTRINGTOSTRING(name) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pname );
    hb_itemRelease( psender );
    hb_itemRelease( pname );
  }
}

void SlotsQAudioInputSelectorControl::availableInputsChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "availableInputsChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QAUDIOINPUTSELECTORCONTROL_ONACTIVEINPUTCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQAudioInputSelectorControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "activeInputChanged(QString)", "activeInputChanged(QString)" ) );
}

HB_FUNC( QAUDIOINPUTSELECTORCONTROL_ONAVAILABLEINPUTSCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQAudioInputSelectorControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "availableInputsChanged()", "availableInputsChanged()" ) );
}

$endSlotsClass
