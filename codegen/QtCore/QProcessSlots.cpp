%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

$includes

$beginSlotsClass
$slot=|error( QProcess::ProcessError error )
$slot=|finished( int exitCode, QProcess::ExitStatus exitStatus )
$slot=|readyReadStandardError()
$slot=|readyReadStandardOutput()
$slot=|started()
$slot=|stateChanged( QProcess::ProcessState newState )
$slot=5,6,0|errorOccurred( QProcess::ProcessError error )
$endSlotsClass
