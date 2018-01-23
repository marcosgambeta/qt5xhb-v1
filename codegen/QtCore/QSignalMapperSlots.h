%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQSignalMapper: public QObject
{
  Q_OBJECT
  public:
  SlotsQSignalMapper(QObject *parent = 0);
  ~SlotsQSignalMapper();
  public slots:
  void mapped(int arg);
  void mapped(const QString &arg);
  void mapped(QWidget *arg);
  void mapped(QObject *arg);
};