%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQCameraExposureControl: public QObject
{
  Q_OBJECT
  public:
  SlotsQCameraExposureControl(QObject *parent = 0);
  ~SlotsQCameraExposureControl();
  public slots:
  void actualValueChanged(int parameter);
  void parameterRangeChanged(int parameter);
  void requestedValueChanged(int parameter);
};
