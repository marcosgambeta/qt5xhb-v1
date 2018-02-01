%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

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

$signalMethod=5,9,0|axisConfigured(int,QGamepadManager::GamepadAxis)
$signalMethod=5,9,0|buttonConfigured(int,QGamepadManager::GamepadButton)
$signalMethod=5,9,0|configurationCanceled(int)
$signalMethod=5,9,0|connectedGamepadsChanged()
$signalMethod=5,9,0|gamepadAxisEvent(int,QGamepadManager::GamepadAxis,double)
$signalMethod=5,9,0|gamepadButtonPressEvent(int,QGamepadManager::GamepadButton,double)
$signalMethod=5,9,0|gamepadButtonReleaseEvent(int,QGamepadManager::GamepadButton)
$signalMethod=5,9,0|gamepadConnected(int)
$signalMethod=5,9,0|gamepadDisconnected(int)
