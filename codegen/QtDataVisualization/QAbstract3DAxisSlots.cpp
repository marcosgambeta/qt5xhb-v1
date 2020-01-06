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
$slot=|autoAdjustRangeChanged( bool autoAdjust )
$slot=|labelAutoRotationChanged( float angle )
$slot=|labelsChanged()
$slot=|maxChanged( float value )
$slot=|minChanged( float value )
$slot=|orientationChanged( QAbstract3DAxis::AxisOrientation orientation )
$slot=|rangeChanged( float min, float max )
$slot=|titleChanged( const QString & newTitle )
$slot=|titleFixedChanged( bool fixed )
$slot=|titleVisibilityChanged( bool visible )
$endSlotsClass
