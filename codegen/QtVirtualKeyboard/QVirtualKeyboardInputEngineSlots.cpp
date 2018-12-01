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
$slot=|virtualKeyClicked( Qt::Key key, const QString & text, Qt::KeyboardModifiers modifiers, bool isAutoRepeat )
$slot=|activeKeyChanged( Qt::Key key )
$slot=|previousKeyChanged( Qt::Key key )
$slot=|inputMethodChanged()
$slot=|inputMethodReset()
$slot=|inputMethodUpdate()
$slot=|inputModesChanged()
$slot=|inputModeChanged()
$slot=|patternRecognitionModesChanged()
$slot=|wordCandidateListModelChanged()
$slot=|wordCandidateListVisibleHintChanged()
$endSlotsClass
