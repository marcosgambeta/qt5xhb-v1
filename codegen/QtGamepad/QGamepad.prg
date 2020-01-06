%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGamepad

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

$prototype=explicit QGamepad(int deviceId = 0, QObject *parent = nullptr)
$constructor=5,9,0|new|int=0,QObject *=nullptr

$prototype=~QGamepad()
$deleteMethod=5,9,0

%%
%% Q_PROPERTY(int deviceId READ deviceId WRITE setDeviceId NOTIFY deviceIdChanged)
%%

$prototype=int deviceId() const
$method=5,9,0|int|deviceId|

$prototype=void setDeviceId(int number) (slot)
$slotMethod=5,9,0|void|setDeviceId|int

%%
%% Q_PROPERTY(bool connected READ isConnected NOTIFY connectedChanged)
%%

$prototype=bool isConnected() const
$method=5,9,0|bool|isConnected|

%%
%% Q_PROPERTY(QString name READ name NOTIFY nameChanged)
%%

$prototype=QString name() const
$method=5,9,0|QString|name|

%%
%% Q_PROPERTY(double axisLeftX READ axisLeftX NOTIFY axisLeftXChanged)
%%

$prototype=double axisLeftX() const
$method=5,9,0|double|axisLeftX|

%%
%% Q_PROPERTY(double axisLeftY READ axisLeftY NOTIFY axisLeftYChanged)
%%

$prototype=double axisLeftY() const
$method=5,9,0|double|axisLeftY|

%%
%% Q_PROPERTY(double axisRightX READ axisRightX NOTIFY axisRightXChanged)
%%

$prototype=double axisRightX() const
$method=5,9,0|double|axisRightX|

%%
%% Q_PROPERTY(double axisRightY READ axisRightY NOTIFY axisRightYChanged)
%%

$prototype=double axisRightY() const
$method=5,9,0|double|axisRightY|

%%
%% Q_PROPERTY(bool buttonA READ buttonA NOTIFY buttonAChanged)
%%

$prototype=bool buttonA() const
$method=5,9,0|bool|buttonA|

%%
%% Q_PROPERTY(bool buttonB READ buttonB NOTIFY buttonBChanged)
%%

$prototype=bool buttonB() const
$method=5,9,0|bool|buttonB|

%%
%% Q_PROPERTY(bool buttonX READ buttonX NOTIFY buttonXChanged)
%%

$prototype=bool buttonX() const
$method=5,9,0|bool|buttonX|

%%
%% Q_PROPERTY(bool buttonY READ buttonY NOTIFY buttonYChanged)
%%

$prototype=bool buttonY() const
$method=5,9,0|bool|buttonY|

%%
%% Q_PROPERTY(bool buttonL1 READ buttonL1 NOTIFY buttonL1Changed)
%%

$prototype=bool buttonL1() const
$method=5,9,0|bool|buttonL1|

%%
%% Q_PROPERTY(bool buttonR1 READ buttonR1 NOTIFY buttonR1Changed)
%%

$prototype=bool buttonR1() const
$method=5,9,0|bool|buttonR1|

%%
%% Q_PROPERTY(double buttonL2 READ buttonL2 NOTIFY buttonL2Changed)
%%

$prototype=double buttonL2() const
$method=5,9,0|double|buttonL2|

%%
%% Q_PROPERTY(double buttonR2 READ buttonR2 NOTIFY buttonR2Changed)
%%

$prototype=double buttonR2() const
$method=5,9,0|double|buttonR2|

%%
%% Q_PROPERTY(bool buttonSelect READ buttonSelect NOTIFY buttonSelectChanged)
%%

$prototype=bool buttonSelect() const
$method=5,9,0|bool|buttonSelect|

%%
%% Q_PROPERTY(bool buttonStart READ buttonStart NOTIFY buttonStartChanged)
%%

$prototype=bool buttonStart() const
$method=5,9,0|bool|buttonStart|

%%
%% Q_PROPERTY(bool buttonL3 READ buttonL3 NOTIFY buttonL3Changed)
%%

$prototype=bool buttonL3() const
$method=5,9,0|bool|buttonL3|

%%
%% Q_PROPERTY(bool buttonR3 READ buttonR3 NOTIFY buttonR3Changed)
%%

$prototype=bool buttonR3() const
$method=5,9,0|bool|buttonR3|

%%
%% Q_PROPERTY(bool buttonUp READ buttonUp NOTIFY buttonUpChanged)
%%

$prototype=bool buttonUp() const
$method=5,9,0|bool|buttonUp|

%%
%% Q_PROPERTY(bool buttonDown READ buttonDown NOTIFY buttonDownChanged)
%%

$prototype=bool buttonDown() const
$method=5,9,0|bool|buttonDown|

%%
%% Q_PROPERTY(bool buttonLeft READ buttonLeft NOTIFY buttonLeftChanged)
%%

$prototype=bool buttonLeft() const
$method=5,9,0|bool|buttonLeft|

%%
%% Q_PROPERTY(bool buttonRight READ buttonRight NOTIFY buttonRightChanged)
%%

$prototype=bool buttonRight() const
$method=5,9,0|bool|buttonRight|

%%
%% Q_PROPERTY(bool buttonCenter READ buttonCenter NOTIFY buttonCenterChanged)
%%

$prototype=bool buttonCenter() const
$method=5,9,0|bool|buttonCenter|

%%
%% Q_PROPERTY(bool buttonGuide READ buttonGuide NOTIFY buttonGuideChanged)
%%

$prototype=bool buttonGuide() const
$method=5,9,0|bool|buttonGuide|

%%
%%
%%

$beginSignals
$signal=5,9,0|axisLeftXChanged(double)
$signal=5,9,0|axisLeftYChanged(double)
$signal=5,9,0|axisRightXChanged(double)
$signal=5,9,0|axisRightYChanged(double)
$signal=5,9,0|buttonAChanged(bool)
$signal=5,9,0|buttonBChanged(bool)
$signal=5,9,0|buttonCenterChanged(bool)
$signal=5,9,0|buttonDownChanged(bool)
$signal=5,9,0|buttonGuideChanged(bool)
$signal=5,9,0|buttonL1Changed(bool)
$signal=5,9,0|buttonL2Changed(double)
$signal=5,9,0|buttonL3Changed(bool)
$signal=5,9,0|buttonLeftChanged(bool)
$signal=5,9,0|buttonR1Changed(bool)
$signal=5,9,0|buttonR2Changed(double)
$signal=5,9,0|buttonR3Changed(bool)
$signal=5,9,0|buttonRightChanged(bool)
$signal=5,9,0|buttonSelectChanged(bool)
$signal=5,9,0|buttonStartChanged(bool)
$signal=5,9,0|buttonUpChanged(bool)
$signal=5,9,0|buttonXChanged(bool)
$signal=5,9,0|buttonYChanged(bool)
$signal=5,9,0|connectedChanged(bool)
$signal=5,9,0|deviceIdChanged(int)
$signal=5,9,0|nameChanged(QString)
$endSignals

#pragma ENDDUMP
