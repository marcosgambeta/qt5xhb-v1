%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

using namespace QtDataVisualization;

$beginSlotsClass
$signal=|multiSeriesUniformChanged( bool uniform )
$signal=|barThicknessChanged( float thicknessRatio )
$signal=|barSpacingChanged( const QSizeF & spacing )
$signal=|barSpacingRelativeChanged( bool relative )
$signal=|rowAxisChanged( QCategory3DAxis * axis )
$signal=|columnAxisChanged( QCategory3DAxis * axis )
$signal=|valueAxisChanged( QValue3DAxis * axis )
$signal=|primarySeriesChanged( QBar3DSeries * series )
$signal=|selectedSeriesChanged( QBar3DSeries * series )
$signal=|floorLevelChanged( float level )
$endSlotsClass
