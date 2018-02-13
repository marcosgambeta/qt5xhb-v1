%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void activeStackChanged( QUndoStack * stack )
$signal=|void canRedoChanged( bool canRedo )
$signal=|void canUndoChanged( bool canUndo )
$signal=|void cleanChanged( bool clean )
$signal=|void indexChanged( int idx )
$signal=|void redoTextChanged( const QString & redoText )
$signal=|void undoTextChanged( const QString & undoText )
$endSlotsClass
