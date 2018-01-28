%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes=5,1,0

$beginSlotsClass
$signal=5,1,0|void busyChanged();
$signal=5,1,0|void activeChanged();
$signal=5,1,0|void readingChanged();
$signal=5,1,0|void sensorError( int error );
$signal=5,1,0|void availableSensorsChanged();
$signal=5,1,0|void alwaysOnChanged();
$signal=5,1,0|void dataRateChanged();
$signal=5,1,0|void skipDuplicatesChanged( bool skipDuplicates );
$signal=5,1,0|void axesOrientationModeChanged( QSensor::AxesOrientationMode axesOrientationMode );
$signal=5,1,0|void currentOrientationChanged( int currentOrientation );
$signal=5,1,0|void userOrientationChanged( int userOrientation );
$signal=5,1,0|void maxBufferSizeChanged( int maxBufferSize );
$signal=5,1,0|void efficientBufferSizeChanged( int efficientBufferSize );
$signal=5,1,0|void bufferSizeChanged( int bufferSize );
$endSlotsClass
