%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,9,0

$prototype=QGamepadManager() (private)

$prototype=~QGamepadManager() (private)
%% $deleteMethod

%%
%% Q_PROPERTY(QList<int> connectedGamepads READ connectedGamepads NOTIFY connectedGamepadsChanged)
%%

$prototype=const QList<int> connectedGamepads() const
%% TODO: const QList<int>
%% $method=5,9,0|const QList<int>|connectedGamepads|

%%
%%
%%

$prototype=static QGamepadManager* instance()
$staticMethod=5,9,0|QGamepadManager *|instance|

$prototype=bool isGamepadConnected(int deviceId) const
$method=5,9,0|bool|isGamepadConnected|int

$prototype=bool isConfigurationNeeded(int deviceId) const (slot)
$slotMethod=5,9,0|bool|isConfigurationNeeded|int

$prototype=bool configureButton(int deviceId, GamepadButton button) (slot)
$slotMethod=5,9,0|bool|configureButton|int,QGamepadManager::GamepadButton

$prototype=bool configureAxis(int deviceId, GamepadAxis axis) (slot)
$slotMethod=5,9,0|bool|configureAxis|int,QGamepadManager::GamepadAxis

$prototype=bool setCancelConfigureButton(int deviceId, GamepadButton button) (slot)
$slotMethod=5,9,0|bool|setCancelConfigureButton|int,QGamepadManager::GamepadButton

$prototype=void resetConfiguration(int deviceId) (slot)
$slotMethod=5,9,0|void|resetConfiguration|int

$prototype=void setSettingsFile(const QString &file) (slot)
$slotMethod=5,9,0|void|setSettingsFile|const QString &

$beginSignals
$signal=5,9,0|axisConfigured(int,QGamepadManager::GamepadAxis)
$signal=5,9,0|buttonConfigured(int,QGamepadManager::GamepadButton)
$signal=5,9,0|configurationCanceled(int)
$signal=5,9,0|connectedGamepadsChanged()
$signal=5,9,0|gamepadAxisEvent(int,QGamepadManager::GamepadAxis,double)
$signal=5,9,0|gamepadButtonPressEvent(int,QGamepadManager::GamepadButton,double)
$signal=5,9,0|gamepadButtonReleaseEvent(int,QGamepadManager::GamepadButton)
$signal=5,9,0|gamepadConnected(int)
$signal=5,9,0|gamepadDisconnected(int)
$endSignals

#pragma ENDDUMP
