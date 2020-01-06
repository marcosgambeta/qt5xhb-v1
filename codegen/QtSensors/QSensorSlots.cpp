%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtSensors

$header

$includes=5,1,0

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
