%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void contentsChange( int from, int charsRemoves, int charsAdded );
$signal=|void contentsChanged();
$signal=|void undoAvailable( bool b );
$signal=|void redoAvailable( bool b );
$signal=|void undoCommandAdded();
$signal=|void modificationChanged( bool m );
$signal=|void cursorPositionChanged( const QTextCursor & cursor );
$signal=|void blockCountChanged( int newBlockCount );
$signal=|void documentLayoutChanged();
$endSlotsClass
