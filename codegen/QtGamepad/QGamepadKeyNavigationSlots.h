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
$signal=5,9,0|activeChanged( bool isActive )
$signal=5,9,0|gamepadChanged( QGamepad * gamepad )
$signal=5,9,0|upKeyChanged( Qt::Key key )
$signal=5,9,0|downKeyChanged( Qt::Key key )
$signal=5,9,0|leftKeyChanged( Qt::Key key )
$signal=5,9,0|rightKeyChanged( Qt::Key key )
$signal=5,9,0|buttonAKeyChanged( Qt::Key key )
$signal=5,9,0|buttonBKeyChanged( Qt::Key key )
$signal=5,9,0|buttonXKeyChanged( Qt::Key key )
$signal=5,9,0|buttonYKeyChanged( Qt::Key key )
$signal=5,9,0|buttonSelectKeyChanged( Qt::Key key )
$signal=5,9,0|buttonStartKeyChanged( Qt::Key key )
$signal=5,9,0|buttonGuideKeyChanged( Qt::Key key )
$signal=5,9,0|buttonL1KeyChanged( Qt::Key key )
$signal=5,9,0|buttonR1KeyChanged( Qt::Key key )
$signal=5,9,0|buttonL2KeyChanged( Qt::Key key )
$signal=5,9,0|buttonR2KeyChanged( Qt::Key key )
$signal=5,9,0|buttonL3KeyChanged( Qt::Key key )
$signal=5,9,0|buttonR3KeyChanged( Qt::Key key )
$endSlotsClass
