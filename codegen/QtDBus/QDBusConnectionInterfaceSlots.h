%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQDBusConnectionInterface: public QObject
{
  Q_OBJECT
  public:
  SlotsQDBusConnectionInterface(QObject *parent = 0);
  ~SlotsQDBusConnectionInterface();
  public slots:
  void serviceRegistered(const QString &service);
  void serviceUnregistered(const QString &service);
  void serviceOwnerChanged(const QString &name, const QString &oldOwner, const QString &newOwner);
  void callWithCallbackFailed(const QDBusError &error, const QDBusMessage &call);
};
