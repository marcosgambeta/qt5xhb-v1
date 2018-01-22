%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQWindow: public QObject
{
  Q_OBJECT
  public:
  SlotsQWindow(QObject *parent = 0);
  ~SlotsQWindow();
  public slots:
  void contentOrientationChanged(Qt::ScreenOrientation orientation);
  void focusObjectChanged(QObject * focusObject);
  void heightChanged(int arg);
  void screenChanged(QScreen * screen);
  void visibleChanged(bool arg);
  void widthChanged(int arg);
  void windowModalityChanged(Qt::WindowModality windowModality);
  void xChanged(int arg);
  void yChanged(int arg);
};
