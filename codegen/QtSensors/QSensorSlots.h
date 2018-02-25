%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes=5,1,0

$beginSlotsClass
$signal=5,1,0|busyChanged()
$signal=5,1,0|activeChanged()
$signal=5,1,0|readingChanged()
$signal=5,1,0|sensorError( int error )
$signal=5,1,0|availableSensorsChanged()
$signal=5,1,0|alwaysOnChanged()
$signal=5,1,0|dataRateChanged()
$signal=5,1,0|skipDuplicatesChanged( bool skipDuplicates )
$signal=5,1,0|axesOrientationModeChanged( QSensor::AxesOrientationMode axesOrientationMode )
$signal=5,1,0|currentOrientationChanged( int currentOrientation )
$signal=5,1,0|userOrientationChanged( int userOrientation )
$signal=5,1,0|maxBufferSizeChanged( int maxBufferSize )
$signal=5,1,0|efficientBufferSizeChanged( int efficientBufferSize )
$signal=5,1,0|bufferSizeChanged( int bufferSize )
$endSlotsClass
