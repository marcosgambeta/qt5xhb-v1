%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQSensorGestureRecognizer::detected(const QString & s)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "detected(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ps = hb_itemPutC( NULL, QSTRINGTOSTRING(s) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ps );
    hb_itemRelease( psender );
    hb_itemRelease( ps );
  }
#endif
}

$signalMethod=5,1,0|detected(QString)

$endSlotsClass
