%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

$includes

$beginSlotsClass
$signal=|directoryLoaded( const QString & path )
$signal=|fileRenamed( const QString & path, const QString & oldName, const QString & newName )
$signal=|rootPathChanged( const QString & newPath )
$endSlotsClass
