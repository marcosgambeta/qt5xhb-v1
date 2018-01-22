%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQStandardItemModel: public QObject
{
  Q_OBJECT
  public:
  SlotsQStandardItemModel(QObject *parent = 0);
  ~SlotsQStandardItemModel();
  public slots:
  void itemChanged(QStandardItem *item);
};
