%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQScriptEngine::signalHandlerException(const QScriptValue & exception)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "signalHandlerException(QScriptValue)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pexception = hb_itemPutPtr( NULL, (QScriptValue *) &exception );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pexception );
    hb_itemRelease( psender );
    hb_itemRelease( pexception );
  }
}

$signalMethod=|signalHandlerException(QScriptValue)

$endSlotsClass
