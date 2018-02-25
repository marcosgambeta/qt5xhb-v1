%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|error( QProcess::ProcessError error )
$signal=|finished( int exitCode, QProcess::ExitStatus exitStatus )
$signal=|readyReadStandardError()
$signal=|readyReadStandardOutput()
$signal=|started()
$signal=|stateChanged( QProcess::ProcessState newState )
$signal=5,6,0|errorOccurred( QProcess::ProcessError error )
$endSlotsClass
