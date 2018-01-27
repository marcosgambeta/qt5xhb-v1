%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|contentsChange( int from, int charsRemoves, int charsAdded )
$slot=|contentsChanged()
$slot=|undoAvailable( bool b )
$slot=|redoAvailable( bool b )
$slot=|undoCommandAdded()
$slot=|modificationChanged( bool m )
$slot=|cursorPositionChanged( const QTextCursor & cursor )
$slot=|blockCountChanged( int newBlockCount )
$slot=|documentLayoutChanged()
$endSlotsClass

$signalMethod=|contentsChange(int,int,int)
$signalMethod=|contentsChanged()
$signalMethod=|undoAvailable(bool)
$signalMethod=|redoAvailable(bool)
$signalMethod=|undoCommandAdded()
$signalMethod=|modificationChanged(bool)
$signalMethod=|cursorPositionChanged(QTextCursor)
$signalMethod=|blockCountChanged(int)
$signalMethod=|documentLayoutChanged()
