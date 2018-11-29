%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtBluetooth

$header

$includes=5,2,0

$beginSlotsClass
$signal=5,2,0|hostModeStateChanged( QBluetoothLocalDevice::HostMode state )
$signal=5,2,0|pairingFinished( const QBluetoothAddress & address, QBluetoothLocalDevice::Pairing pairing )
$signal=5,2,0|pairingDisplayPinCode( const QBluetoothAddress & address, QString pin )
$signal=5,2,0|pairingDisplayConfirmation( const QBluetoothAddress & address, QString pin )
$signal=5,2,0|error( QBluetoothLocalDevice::Error error )
$endSlotsClass
