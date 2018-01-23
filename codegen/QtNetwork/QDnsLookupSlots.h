%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQDnsLookup: public QObject
{
  Q_OBJECT
  public:
  SlotsQDnsLookup(QObject *parent = 0);
  ~SlotsQDnsLookup();
  public slots:
  void finished();
  void nameChanged(const QString & name);
  void typeChanged(QDnsLookup::Type type);
};
