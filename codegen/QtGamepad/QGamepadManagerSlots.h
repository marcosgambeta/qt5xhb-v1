%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes=5,9,0

$beginSlotsClass
$signal=5,9,0|void connectedGamepadsChanged();
$signal=5,9,0|void gamepadConnected( int deviceId );
$signal=5,9,0|void gamepadDisconnected( int deviceId );
$signal=5,9,0|void gamepadAxisEvent( int deviceId, QGamepadManager::GamepadAxis axis, double value );
$signal=5,9,0|void gamepadButtonPressEvent( int deviceId, QGamepadManager::GamepadButton button, double value );
$signal=5,9,0|void gamepadButtonReleaseEvent( int deviceId, QGamepadManager::GamepadButton button );
$signal=5,9,0|void buttonConfigured( int deviceId, QGamepadManager::GamepadButton button );
$signal=5,9,0|void axisConfigured( int deviceId, QGamepadManager::GamepadAxis axis );
$signal=5,9,0|void configurationCanceled( int deviceId );
$endSlotsClass
