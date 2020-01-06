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
$slot=|aboutToReleaseGpuResources()
$slot=|aboutToUseGpuResources()
$slot=|commitDataRequest( QSessionManager & manager )
$slot=|focusChanged( QWidget * old, QWidget * now )
$slot=|fontDatabaseChanged()
$slot=|lastWindowClosed()
$slot=|saveStateRequest( QSessionManager & manager )
$endSlotsClass
