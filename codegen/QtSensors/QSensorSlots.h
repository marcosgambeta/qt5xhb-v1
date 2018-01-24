%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes=5,1,0

$beginSlotsClass
  void busyChanged();
  void activeChanged();
  void readingChanged();
  void sensorError(int error);
  void availableSensorsChanged();
  void alwaysOnChanged();
  void dataRateChanged();
  void skipDuplicatesChanged(bool skipDuplicates);
  void axesOrientationModeChanged(QSensor::AxesOrientationMode axesOrientationMode);
  void currentOrientationChanged(int currentOrientation);
  void userOrientationChanged(int userOrientation);
  void maxBufferSizeChanged(int maxBufferSize);
  void efficientBufferSizeChanged(int efficientBufferSize);
  void bufferSizeChanged(int bufferSize);
$endSlotsClass
