%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQListView: public QObject
{
  Q_OBJECT
  public:
  SlotsQListView(QObject *parent = 0);
  ~SlotsQListView();
  public slots:
  void indexesMoved ( const QModelIndexList & indexes );
};
