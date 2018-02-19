%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

using namespace QtDataVisualization;

$beginSlotsClass
$signal=|void titleChanged( const QString & newTitle )
$signal=|void labelsChanged()
$signal=|void orientationChanged( QAbstract3DAxis::AxisOrientation orientation )
$signal=|void minChanged( float value )
$signal=|void maxChanged( float value )
$signal=|void rangeChanged( float min, float max )
$signal=|void autoAdjustRangeChanged( bool autoAdjust )
$signal=|void labelAutoRotationChanged( float angle )
$signal=|void titleVisibilityChanged( bool visible )
$signal=|void titleFixedChanged( bool fixed )
$endSlotsClass
