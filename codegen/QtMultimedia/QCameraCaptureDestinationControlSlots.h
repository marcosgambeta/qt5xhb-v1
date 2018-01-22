%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQCameraCaptureDestinationControl: public QObject
{
  Q_OBJECT
  public:
  SlotsQCameraCaptureDestinationControl(QObject *parent = 0);
  ~SlotsQCameraCaptureDestinationControl();
  public slots:
  void captureDestinationChanged(QCameraImageCapture::CaptureDestinations destination);
};
