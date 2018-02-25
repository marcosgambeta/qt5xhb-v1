%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|stationIdChanged( QString stationId )
$signal=|programTypeChanged( QRadioData::ProgramType programType )
$signal=|programTypeNameChanged( QString programTypeName )
$signal=|stationNameChanged( QString stationName )
$signal=|radioTextChanged( QString radioText )
$signal=|alternativeFrequenciesEnabledChanged( bool enabled )
$signal=|error( QRadioData::Error error )
$endSlotsClass
