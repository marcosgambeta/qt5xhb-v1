%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDataVisualization

$header

$includes

$beginSlotsClass
$slot=|barSpacingChanged( const QSizeF & spacing )
$slot=|barSpacingRelativeChanged( bool relative )
$slot=|barThicknessChanged( float thicknessRatio )
$slot=|columnAxisChanged( QCategory3DAxis * axis )
$slot=|floorLevelChanged( float level )
$slot=|multiSeriesUniformChanged( bool uniform )
$slot=|primarySeriesChanged( QBar3DSeries * series )
$slot=|rowAxisChanged( QCategory3DAxis * axis )
$slot=|selectedSeriesChanged( QBar3DSeries * series )
$slot=|valueAxisChanged( QValue3DAxis * axis )
$endSlotsClass
