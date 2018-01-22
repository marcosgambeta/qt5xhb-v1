%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQTreeView: public QObject
{
  Q_OBJECT
  public:
  SlotsQTreeView(QObject *parent = 0);
  ~SlotsQTreeView();
  public slots:
  void collapsed ( const QModelIndex & index );
  void expanded ( const QModelIndex & index );
};
