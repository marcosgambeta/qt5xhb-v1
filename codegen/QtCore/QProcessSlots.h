%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void error( QProcess::ProcessError error )
$signal=|void finished( int exitCode, QProcess::ExitStatus exitStatus )
$signal=|void readyReadStandardError()
$signal=|void readyReadStandardOutput()
$signal=|void started()
$signal=|void stateChanged( QProcess::ProcessState newState )
$signal=5,6,0|void errorOccurred( QProcess::ProcessError error )
$endSlotsClass
