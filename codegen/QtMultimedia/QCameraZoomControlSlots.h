%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQCameraZoomControl: public QObject
{
  Q_OBJECT
  public:
  SlotsQCameraZoomControl(QObject *parent = 0);
  ~SlotsQCameraZoomControl();
  public slots:
  void currentDigitalZoomChanged(qreal zoom);
  void currentOpticalZoomChanged(qreal zoom);
  void maximumDigitalZoomChanged(qreal zoom);
  void maximumOpticalZoomChanged(qreal zoom);
  void requestedDigitalZoomChanged(qreal zoom);
  void requestedOpticalZoomChanged(qreal zoom);
};
