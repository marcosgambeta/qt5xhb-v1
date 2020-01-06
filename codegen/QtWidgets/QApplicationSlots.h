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
$signal=|aboutToReleaseGpuResources()
$signal=|aboutToUseGpuResources()
$signal=|commitDataRequest( QSessionManager & manager )
$signal=|focusChanged( QWidget * old, QWidget * now )
$signal=|fontDatabaseChanged()
$signal=|lastWindowClosed()
$signal=|saveStateRequest( QSessionManager & manager )
$endSlotsClass
