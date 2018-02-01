%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=5,1,0|busyChanged()
$slot=5,1,0|activeChanged()
$slot=5,1,0|readingChanged()
$slot=5,1,0|sensorError( int error )
$slot=5,1,0|availableSensorsChanged()
$slot=5,1,0|alwaysOnChanged()
$slot=5,1,0|dataRateChanged()
$slot=5,1,0|skipDuplicatesChanged( bool skipDuplicates )
$slot=5,1,0|axesOrientationModeChanged( QSensor::AxesOrientationMode axesOrientationMode )
$slot=5,1,0|currentOrientationChanged( int currentOrientation )
$slot=5,1,0|userOrientationChanged( int userOrientation )
$slot=5,1,0|maxBufferSizeChanged( int maxBufferSize )
$slot=5,1,0|efficientBufferSizeChanged( int efficientBufferSize )
$slot=5,1,0|bufferSizeChanged( int bufferSize )
$endSlotsClass

$signalMethod=5,1,0|busyChanged()
$signalMethod=5,1,0|activeChanged()
$signalMethod=5,1,0|readingChanged()
$signalMethod=5,1,0|sensorError(int)
$signalMethod=5,1,0|availableSensorsChanged()
$signalMethod=5,1,0|alwaysOnChanged()
$signalMethod=5,1,0|dataRateChanged()
$signalMethod=5,1,0|skipDuplicatesChanged(bool)
$signalMethod=5,1,0|axesOrientationModeChanged(QSensor::AxesOrientationMode)
$signalMethod=5,1,0|currentOrientationChanged(int)
$signalMethod=5,1,0|userOrientationChanged(int)
$signalMethod=5,1,0|maxBufferSizeChanged(int)
$signalMethod=5,1,0|efficientBufferSizeChanged(int)
$signalMethod=5,1,0|bufferSizeChanged(int)