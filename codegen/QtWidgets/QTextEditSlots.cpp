%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|copyAvailable( bool yes )
$slot=|currentCharFormatChanged( const QTextCharFormat & f )
$slot=|cursorPositionChanged()
$slot=|redoAvailable( bool available )
$slot=|selectionChanged()
$slot=|textChanged()
$slot=|undoAvailable( bool available )
$endSlotsClass

$signalMethod=|copyAvailable(bool)
$signalMethod=|currentCharFormatChanged(QTextCharFormat)
$signalMethod=|cursorPositionChanged()
$signalMethod=|redoAvailable(bool)
$signalMethod=|selectionChanged()
$signalMethod=|textChanged()
$signalMethod=|undoAvailable(bool)
