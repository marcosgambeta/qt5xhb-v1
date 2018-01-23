%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQDBusServer: public QObject
{
  Q_OBJECT
  public:
  SlotsQDBusServer(QObject *parent = 0);
  ~SlotsQDBusServer();
  public slots:
  void newConnection(const QDBusConnection &connection);
};
