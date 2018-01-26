%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQBluetoothServiceDiscoveryAgent::serviceDiscovered(const QBluetoothServiceInfo &info)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "serviceDiscovered(QBluetoothServiceInfo)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pinfo = hb_itemPutPtr( NULL, (QBluetoothServiceInfo *) &info );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pinfo );
    hb_itemRelease( psender );
    hb_itemRelease( pinfo );
  }
#endif
}

$slot=5,2,0|finished()

$slot=5,2,0|canceled()

void SlotsQBluetoothServiceDiscoveryAgent::error(QBluetoothServiceDiscoveryAgent::Error error)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(QBluetoothServiceDiscoveryAgent::Error)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM perror = hb_itemPutNI( NULL, (int) error );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, perror );
    hb_itemRelease( psender );
    hb_itemRelease( perror );
  }
#endif
}

$signalMethod=5,2,0|serviceDiscovered(QBluetoothServiceInfo)
$signalMethod=5,2,0|finished()
$signalMethod=5,2,0|canceled()
$signalMethod=5,2,0|error(QBluetoothServiceDiscoveryAgent::Error)

$endSlotsClass
