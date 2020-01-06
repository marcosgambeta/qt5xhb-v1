%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGamepad

$header

$includes=5,9,0

$beginSlotsClass
$signal=5,9,0|connectedGamepadsChanged()
$signal=5,9,0|gamepadConnected( int deviceId )
$signal=5,9,0|gamepadDisconnected( int deviceId )
$signal=5,9,0|gamepadAxisEvent( int deviceId, QGamepadManager::GamepadAxis axis, double value )
$signal=5,9,0|gamepadButtonPressEvent( int deviceId, QGamepadManager::GamepadButton button, double value )
$signal=5,9,0|gamepadButtonReleaseEvent( int deviceId, QGamepadManager::GamepadButton button )
$signal=5,9,0|buttonConfigured( int deviceId, QGamepadManager::GamepadButton button )
$signal=5,9,0|axisConfigured( int deviceId, QGamepadManager::GamepadAxis axis )
$signal=5,9,0|configurationCanceled( int deviceId )
$endSlotsClass
