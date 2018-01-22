%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQGuiApplication: public QObject
{
  Q_OBJECT
  public:
  SlotsQGuiApplication(QObject *parent = 0);
  ~SlotsQGuiApplication();
  public slots:
  void focusObjectChanged(QObject * focusObject);
  void focusWindowChanged(QWindow * focusWindow);
  void fontDatabaseChanged();
  void lastWindowClosed();
  void screenAdded(QScreen * screen);
};
