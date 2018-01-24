%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
  void bufferFormatChanged(QVideoFrame::PixelFormat format);
  void captureDestinationChanged(QCameraImageCapture::CaptureDestinations destination);
  void error(int id, QCameraImageCapture::Error error, const QString & errorString);
  void imageAvailable(int id, const QVideoFrame & buffer);
  void imageCaptured(int id, const QImage & preview);
  void imageExposed(int id);
  void imageMetadataAvailable(int id, const QString & key, const QVariant & value);
  void imageSaved(int id, const QString & fileName);
  void readyForCaptureChanged(bool ready);
$endSlotsClass
