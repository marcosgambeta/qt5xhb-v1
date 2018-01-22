%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQCameraExposure: public QObject
{
  Q_OBJECT
  public:
  SlotsQCameraExposure(QObject *parent = 0);
  ~SlotsQCameraExposure();
  public slots:
  void apertureChanged(qreal value);
  void apertureRangeChanged();
  void exposureCompensationChanged(qreal value);
  void flashReady(bool ready);
  void isoSensitivityChanged(int value);
  void shutterSpeedChanged(qreal speed);
  void shutterSpeedRangeChanged();
};
