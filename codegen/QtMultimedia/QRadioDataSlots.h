%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void stationIdChanged( QString stationId )
$signal=|void programTypeChanged( QRadioData::ProgramType programType )
$signal=|void programTypeNameChanged( QString programTypeName )
$signal=|void stationNameChanged( QString stationName )
$signal=|void radioTextChanged( QString radioText )
$signal=|void alternativeFrequenciesEnabledChanged( bool enabled )
$signal=|void error( QRadioData::Error error )
$endSlotsClass
