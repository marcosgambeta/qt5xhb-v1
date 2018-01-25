%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQAccelerometer::accelerationModeChanged(QAccelerometer::AccelerationMode accelerationMode)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "accelerationModeChanged(QAccelerometer::AccelerationMode)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM paccelerationMode = hb_itemPutNI( NULL, (int) accelerationMode );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, paccelerationMode );
    hb_itemRelease( psender );
    hb_itemRelease( paccelerationMode );
  }
#endif
}

$signalMethod=5,1,0|accelerationModeChanged(QAccelerometer::AccelerationMode)

$endSlotsClass
