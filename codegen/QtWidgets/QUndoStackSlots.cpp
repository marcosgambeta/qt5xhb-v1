%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

$slot=|canRedoChanged( bool canRedo )
$slot=|canUndoChanged( bool canUndo )
$slot=|cleanChanged( bool clean )
$slot=|indexChanged( int idx )
$slot=|redoTextChanged( const QString & redoText )
$slot=|undoTextChanged( const QString & undoText )

$signalMethod=|canRedoChanged(bool)
$signalMethod=|canUndoChanged(bool)
$signalMethod=|cleanChanged(bool)
$signalMethod=|indexChanged(int)
$signalMethod=|redoTextChanged(QString)
$signalMethod=|undoTextChanged(QString)

$endSlotsClass
