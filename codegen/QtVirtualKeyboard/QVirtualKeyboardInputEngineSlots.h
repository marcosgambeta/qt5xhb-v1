%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtVirtualKeyboard

$header

$includes

$beginSlotsClass
$signal=|virtualKeyClicked( Qt::Key key, const QString & text, Qt::KeyboardModifiers modifiers, bool isAutoRepeat )
$signal=|activeKeyChanged( Qt::Key key )
$signal=|previousKeyChanged( Qt::Key key )
$signal=|inputMethodChanged()
$signal=|inputMethodReset()
$signal=|inputMethodUpdate()
$signal=|inputModesChanged()
$signal=|inputModeChanged()
$signal=|patternRecognitionModesChanged()
$signal=|wordCandidateListModelChanged()
$signal=|wordCandidateListVisibleHintChanged()
$endSlotsClass
