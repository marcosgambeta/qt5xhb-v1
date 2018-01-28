%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void blockCountChanged( int newBlockCount );
$signal=|void copyAvailable( bool yes );
$signal=|void cursorPositionChanged();
$signal=|void modificationChanged( bool changed );
$signal=|void redoAvailable( bool available );
$signal=|void selectionChanged();
$signal=|void textChanged();
$signal=|void undoAvailable( bool available );
$signal=|void updateRequest( const QRect & rect, int dy );
$endSlotsClass
