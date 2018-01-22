%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQCameraImageCaptureControl: public QObject
{
  Q_OBJECT
  public:
  SlotsQCameraImageCaptureControl(QObject *parent = 0);
  ~SlotsQCameraImageCaptureControl();
  public slots:
  void error(int id, int error, const QString & errorString);
  void imageAvailable(int requestId, const QVideoFrame & buffer);
  void imageCaptured(int requestId, const QImage & preview);
  void imageExposed(int requestId);
  void imageMetadataAvailable(int id, const QString & key, const QVariant & value);
  void imageSaved(int requestId, const QString & fileName);
  void readyForCaptureChanged(bool ready);
};
