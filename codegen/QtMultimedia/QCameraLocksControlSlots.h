%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQCameraLocksControl: public QObject
{
  Q_OBJECT
  public:
  SlotsQCameraLocksControl(QObject *parent = 0);
  ~SlotsQCameraLocksControl();
  public slots:
  void lockStatusChanged(QCamera::LockType lock, QCamera::LockStatus status, QCamera::LockChangeReason reason);
};
