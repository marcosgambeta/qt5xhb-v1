%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQCameraFocusControl: public QObject
{
  Q_OBJECT
  public:
  SlotsQCameraFocusControl(QObject *parent = 0);
  ~SlotsQCameraFocusControl();
  public slots:
  void customFocusPointChanged(const QPointF & point);
  void focusModeChanged(QCameraFocus::FocusModes mode);
  void focusPointModeChanged(QCameraFocus::FocusPointMode mode);
  void focusZonesChanged();
};
