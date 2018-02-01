%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

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

$signalMethod=|autoAdjustRangeChanged(bool)
$signalMethod=|labelAutoRotationChanged(float)
$signalMethod=|labelsChanged()
$signalMethod=|maxChanged(float)
$signalMethod=|minChanged(float)
$signalMethod=|orientationChanged(QAbstract3DAxis::AxisOrientation)
$signalMethod=|rangeChanged(float,float)
$signalMethod=|titleChanged(QString)
$signalMethod=|titleFixedChanged(bool)
$signalMethod=|titleVisibilityChanged(bool)
