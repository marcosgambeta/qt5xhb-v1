%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGAMEPAD
#endif

$beginClassFrom=QObject

   METHOD new
%%   METHOD delete

   METHOD active
   METHOD buttonAKey
   METHOD buttonBKey
   METHOD buttonGuideKey
   METHOD buttonL1Key
   METHOD buttonL2Key
   METHOD buttonL3Key
   METHOD buttonR1Key
   METHOD buttonR2Key
   METHOD buttonR3Key
   METHOD buttonSelectKey
   METHOD buttonStartKey
   METHOD buttonXKey
   METHOD buttonYKey
   METHOD downKey
   METHOD gamepad
   METHOD leftKey
   METHOD rightKey
   METHOD setActive
   METHOD setButtonAKey
   METHOD setButtonBKey
   METHOD setButtonGuideKey
   METHOD setButtonL1Key
   METHOD setButtonL2Key
   METHOD setButtonL3Key
   METHOD setButtonR1Key
   METHOD setButtonR2Key
   METHOD setButtonR3Key
   METHOD setButtonSelectKey
   METHOD setButtonStartKey
   METHOD setButtonXKey
   METHOD setButtonYKey
   METHOD setDownKey
   METHOD setGamepad
   METHOD setLeftKey
   METHOD setRightKey
   METHOD setUpKey
   METHOD upKey

   METHOD onActiveChanged
   METHOD onGamepadChanged
   METHOD onUpKeyChanged
   METHOD onDownKeyChanged
   METHOD onLeftKeyChanged
   METHOD onRightKeyChanged
   METHOD onButtonAKeyChanged
   METHOD onButtonBKeyChanged
   METHOD onButtonXKeyChanged
   METHOD onButtonYKeyChanged
   METHOD onButtonSelectKeyChanged
   METHOD onButtonStartKeyChanged
   METHOD onButtonGuideKeyChanged
   METHOD onButtonL1KeyChanged
   METHOD onButtonR1KeyChanged
   METHOD onButtonL2KeyChanged
   METHOD onButtonR2KeyChanged
   METHOD onButtonL3KeyChanged
   METHOD onButtonR3KeyChanged

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,9,0

#include <QGamepad>

$prototype=explicit QGamepadKeyNavigation(QObject *parent = nullptr)
$constructor=5,9,0|new|QObject *=nullptr

%% $deleteMethod

%%
%% Q_PROPERTY(bool active READ active WRITE setActive NOTIFY activeChanged)
%%

$prototype=bool active() const
$method=5,9,0|bool|active|

$prototype=void setActive(bool isActive) (slot)
$slotMethod=5,9,0|void|setActive|bool

%%
%% Q_PROPERTY(QGamepad *gamepad READ gamepad WRITE setGamepad NOTIFY gamepadChanged)
%%

$prototype=QGamepad *gamepad() const
$method=5,9,0|QGamepad *|gamepad|

$prototype=void setGamepad(QGamepad *gamepad) (slot)
$slotMethod=5,9,0|void|setGamepad|QGamepad *

%%
%% Q_PROPERTY(Qt::Key upKey READ upKey WRITE setUpKey NOTIFY upKeyChanged)
%%

$prototype=Qt::Key upKey() const
$method=5,9,0|Qt::Key|upKey|

$prototype=void setUpKey(Qt::Key key) (slot)
$slotMethod=5,9,0|void|setUpKey|Qt::Key

%%
%% Q_PROPERTY(Qt::Key downKey READ downKey WRITE setDownKey NOTIFY downKeyChanged)
%%

$prototype=Qt::Key downKey() const
$method=5,9,0|Qt::Key|downKey|

$prototype=void setDownKey(Qt::Key key) (slot)
$slotMethod=5,9,0|void|setDownKey|Qt::Key

%%
%% Q_PROPERTY(Qt::Key leftKey READ leftKey WRITE setLeftKey NOTIFY leftKeyChanged)
%%

$prototype=Qt::Key leftKey() const
$method=5,9,0|Qt::Key|leftKey|

$prototype=void setLeftKey(Qt::Key key) (slot)
$slotMethod=5,9,0|void|setLeftKey|Qt::Key

%%
%% Q_PROPERTY(Qt::Key rightKey READ rightKey WRITE setRightKey NOTIFY rightKeyChanged)
%%

$prototype=Qt::Key rightKey() const
$method=5,9,0|Qt::Key|rightKey|

$prototype=void setRightKey(Qt::Key key) (slot)
$slotMethod=5,9,0|void|setRightKey|Qt::Key

%%
%% Q_PROPERTY(Qt::Key buttonAKey READ buttonAKey WRITE setButtonAKey NOTIFY buttonAKeyChanged)
%%

$prototype=Qt::Key buttonAKey() const
$method=5,9,0|Qt::Key|buttonAKey|

$prototype=void setButtonAKey(Qt::Key key) (slot)
$slotMethod=5,9,0|void|setButtonAKey|Qt::Key

%%
%% Q_PROPERTY(Qt::Key buttonBKey READ buttonBKey WRITE setButtonBKey NOTIFY buttonBKeyChanged)
%%

$prototype=Qt::Key buttonBKey() const
$method=5,9,0|Qt::Key|buttonBKey|

$prototype=void setButtonBKey(Qt::Key key) (slot)
$slotMethod=5,9,0|void|setButtonBKey|Qt::Key

%%
%% Q_PROPERTY(Qt::Key buttonXKey READ buttonXKey WRITE setButtonXKey NOTIFY buttonXKeyChanged)
%%

$prototype=Qt::Key buttonXKey() const
$method=5,9,0|Qt::Key|buttonXKey|

$prototype=void setButtonXKey(Qt::Key key) (slot)
$slotMethod=5,9,0|void|setButtonXKey|Qt::Key

%%
%% Q_PROPERTY(Qt::Key buttonYKey READ buttonYKey WRITE setButtonYKey NOTIFY buttonYKeyChanged)
%%

$prototype=Qt::Key buttonYKey() const
$method=5,9,0|Qt::Key|buttonYKey|

$prototype=void setButtonYKey(Qt::Key key) (slot)
$slotMethod=5,9,0|void|setButtonYKey|Qt::Key

%%
%% Q_PROPERTY(Qt::Key buttonSelectKey READ buttonSelectKey WRITE setButtonSelectKey NOTIFY buttonSelectKeyChanged)
%%

$prototype=Qt::Key buttonSelectKey() const
$method=5,9,0|Qt::Key|buttonSelectKey|

$prototype=void setButtonSelectKey(Qt::Key key) (slot)
$slotMethod=5,9,0|void|setButtonSelectKey|Qt::Key

%%
%% Q_PROPERTY(Qt::Key buttonStartKey READ buttonStartKey WRITE setButtonStartKey NOTIFY buttonStartKeyChanged)
%%

$prototype=Qt::Key buttonStartKey() const
$method=5,9,0|Qt::Key|buttonStartKey|

$prototype=void setButtonStartKey(Qt::Key key) (slot)
$slotMethod=5,9,0|void|setButtonStartKey|Qt::Key

%%
%% Q_PROPERTY(Qt::Key buttonGuideKey READ buttonGuideKey WRITE setButtonGuideKey NOTIFY buttonGuideKeyChanged)
%%

$prototype=Qt::Key buttonGuideKey() const
$method=5,9,0|Qt::Key|buttonGuideKey|

$prototype=void setButtonGuideKey(Qt::Key key) (slot)
$slotMethod=5,9,0|void|setButtonGuideKey|Qt::Key

%%
%% Q_PROPERTY(Qt::Key buttonL1Key READ buttonL1Key WRITE setButtonL1Key NOTIFY buttonL1KeyChanged)
%%

$prototype=Qt::Key buttonL1Key() const
$method=5,9,0|Qt::Key|buttonL1Key|

$prototype=void setButtonL1Key(Qt::Key key) (slot)
$slotMethod=5,9,0|void|setButtonL1Key|Qt::Key

%%
%% Q_PROPERTY(Qt::Key buttonR1Key READ buttonR1Key WRITE setButtonR1Key NOTIFY buttonR1KeyChanged)
%%

$prototype=Qt::Key buttonR1Key() const
$method=5,9,0|Qt::Key|buttonR1Key|

$prototype=void setButtonR1Key(Qt::Key key) (slot)
$slotMethod=5,9,0|void|setButtonR1Key|Qt::Key

%%
%% Q_PROPERTY(Qt::Key buttonL2Key READ buttonL2Key WRITE setButtonL2Key NOTIFY buttonL2KeyChanged)
%%

$prototype=Qt::Key buttonL2Key() const
$method=5,9,0|Qt::Key|buttonL2Key|

$prototype=void setButtonL2Key(Qt::Key key) (slot)
$slotMethod=5,9,0|void|setButtonL2Key|Qt::Key

%%
%% Q_PROPERTY(Qt::Key buttonR2Key READ buttonR2Key WRITE setButtonR2Key NOTIFY buttonR2KeyChanged)
%%

$prototype=Qt::Key buttonR2Key() const
$method=5,9,0|Qt::Key|buttonR2Key|

$prototype=void setButtonR2Key(Qt::Key key) (slot)
$slotMethod=5,9,0|void|setButtonR2Key|Qt::Key

%%
%% Q_PROPERTY(Qt::Key buttonL3Key READ buttonL3Key WRITE setButtonL3Key NOTIFY buttonL3KeyChanged)
%%

$prototype=Qt::Key buttonL3Key() const
$method=5,9,0|Qt::Key|buttonL3Key|

$prototype=void setButtonL3Key(Qt::Key key) (slot)
$slotMethod=5,9,0|void|setButtonL3Key|Qt::Key

%%
%% Q_PROPERTY(Qt::Key buttonR3Key READ buttonR3Key WRITE setButtonR3Key NOTIFY buttonR3KeyChanged)
%%

$prototype=Qt::Key buttonR3Key() const
$method=5,9,0|Qt::Key|buttonR3Key|

$prototype=void setButtonR3Key(Qt::Key key) (slot)
$slotMethod=5,9,0|void|setButtonR3Key|Qt::Key

%%
%%
%%

$beginSignals
$signal=5,9,0|activeChanged(bool)
$signal=5,9,0|gamepadChanged(QGamepad*)
$signal=5,9,0|upKeyChanged(Qt::Key)
$signal=5,9,0|downKeyChanged(Qt::Key)
$signal=5,9,0|leftKeyChanged(Qt::Key)
$signal=5,9,0|rightKeyChanged(Qt::Key)
$signal=5,9,0|buttonAKeyChanged(Qt::Key)
$signal=5,9,0|buttonBKeyChanged(Qt::Key)
$signal=5,9,0|buttonXKeyChanged(Qt::Key)
$signal=5,9,0|buttonYKeyChanged(Qt::Key)
$signal=5,9,0|buttonSelectKeyChanged(Qt::Key)
$signal=5,9,0|buttonStartKeyChanged(Qt::Key)
$signal=5,9,0|buttonGuideKeyChanged(Qt::Key)
$signal=5,9,0|buttonL1KeyChanged(Qt::Key)
$signal=5,9,0|buttonR1KeyChanged(Qt::Key)
$signal=5,9,0|buttonL2KeyChanged(Qt::Key)
$signal=5,9,0|buttonR2KeyChanged(Qt::Key)
$signal=5,9,0|buttonL3KeyChanged(Qt::Key)
$signal=5,9,0|buttonR3KeyChanged(Qt::Key)
$endSignals

#pragma ENDDUMP
