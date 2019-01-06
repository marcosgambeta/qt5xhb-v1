%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGamepad

$header

$includes=5,9,0

$beginSlotsClass
$slot=5,9,0|axisConfigured( int deviceId, QGamepadManager::GamepadAxis axis )
$slot=5,9,0|buttonConfigured( int deviceId, QGamepadManager::GamepadButton button )
$slot=5,9,0|configurationCanceled( int deviceId )
$slot=5,9,0|connectedGamepadsChanged()
$slot=5,9,0|gamepadAxisEvent( int deviceId, QGamepadManager::GamepadAxis axis, double value )
$slot=5,9,0|gamepadButtonPressEvent( int deviceId, QGamepadManager::GamepadButton button, double value )
$slot=5,9,0|gamepadButtonReleaseEvent( int deviceId, QGamepadManager::GamepadButton button )
$slot=5,9,0|gamepadConnected( int deviceId )
$slot=5,9,0|gamepadDisconnected( int deviceId )
$endSlotsClass
