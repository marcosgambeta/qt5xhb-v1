%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

$includes

$beginSlotsClass
$signal=|canRedoChanged( bool canRedo )
$signal=|canUndoChanged( bool canUndo )
$signal=|cleanChanged( bool clean )
$signal=|indexChanged( int idx )
$signal=|redoTextChanged( const QString & redoText )
$signal=|undoTextChanged( const QString & undoText )
$endSlotsClass
