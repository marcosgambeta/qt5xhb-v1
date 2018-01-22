%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQSystemTrayIcon: public QObject
{
  Q_OBJECT
  public:
  SlotsQSystemTrayIcon(QObject *parent = 0);
  ~SlotsQSystemTrayIcon();
  public slots:
  void activated(QSystemTrayIcon::ActivationReason reason);
  void messageClicked();
};
