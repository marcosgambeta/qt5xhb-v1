%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

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

$signalMethod=|barSpacingChanged(QSizeF)
$signalMethod=|barSpacingRelativeChanged(bool)
$signalMethod=|barThicknessChanged(float)
$signalMethod=|columnAxisChanged(QCategory3DAxis*)
$signalMethod=|floorLevelChanged(float)
$signalMethod=|multiSeriesUniformChanged(bool)
$signalMethod=|primarySeriesChanged(QBar3DSeries*)
$signalMethod=|rowAxisChanged(QCategory3DAxis*)
$signalMethod=|selectedSeriesChanged(QBar3DSeries*)
$signalMethod=|valueAxisChanged(QValue3DAxis*)
