%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

using namespace QtDataVisualization;

$beginSlotsClass
$signal=|titleChanged( const QString & newTitle )
$signal=|labelsChanged()
$signal=|orientationChanged( QAbstract3DAxis::AxisOrientation orientation )
$signal=|minChanged( float value )
$signal=|maxChanged( float value )
$signal=|rangeChanged( float min, float max )
$signal=|autoAdjustRangeChanged( bool autoAdjust )
$signal=|labelAutoRotationChanged( float angle )
$signal=|titleVisibilityChanged( bool visible )
$signal=|titleFixedChanged( bool fixed )
$endSlotsClass
