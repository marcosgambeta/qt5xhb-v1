%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes=5,2,0

$beginSlotsClass
$signal=5,2,0|void hostModeStateChanged( QBluetoothLocalDevice::HostMode state )
$signal=5,2,0|void pairingFinished( const QBluetoothAddress & address, QBluetoothLocalDevice::Pairing pairing )
$signal=5,2,0|void pairingDisplayPinCode( const QBluetoothAddress & address, QString pin )
$signal=5,2,0|void pairingDisplayConfirmation( const QBluetoothAddress & address, QString pin )
$signal=5,2,0|void error( QBluetoothLocalDevice::Error error )
$endSlotsClass
