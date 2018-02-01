%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QGamepadManager INHERIT QObject

%%   METHOD new
%%   METHOD delete

   METHOD configureAxis
   METHOD configureButton
%%   METHOD connectedGamepads
   METHOD instance
   METHOD isConfigurationNeeded
   METHOD isGamepadConnected
   METHOD resetConfiguration
   METHOD setCancelConfigureButton
   METHOD setSettingsFile

   METHOD onAxisConfigured
   METHOD onButtonConfigured
   METHOD onConfigurationCanceled
   METHOD onConnectedGamepadsChanged
   METHOD onGamepadAxisEvent
   METHOD onGamepadButtonPressEvent
   METHOD onGamepadButtonReleaseEvent
   METHOD onGamepadConnected
   METHOD onGamepadDisconnected

   DESTRUCTOR destroyObject

END CLASS

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

#pragma ENDDUMP
