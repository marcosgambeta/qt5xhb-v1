%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

$includes

$beginSlotsClass
$signal=|contentsChange( int from, int charsRemoves, int charsAdded )
$signal=|contentsChanged()
$signal=|undoAvailable( bool b )
$signal=|redoAvailable( bool b )
$signal=|undoCommandAdded()
$signal=|modificationChanged( bool m )
$signal=|cursorPositionChanged( const QTextCursor & cursor )
$signal=|blockCountChanged( int newBlockCount )
$signal=|documentLayoutChanged()
$endSlotsClass
