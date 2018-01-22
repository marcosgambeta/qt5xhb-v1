%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQAbstractItemView: public QObject
{
  Q_OBJECT
  public:
  SlotsQAbstractItemView(QObject *parent = 0);
  ~SlotsQAbstractItemView();
  public slots:
  void activated ( const QModelIndex & index );
  void clicked ( const QModelIndex & index );
  void doubleClicked ( const QModelIndex & index );
  void entered ( const QModelIndex & index );
  void pressed ( const QModelIndex & index );
  void viewportEntered ();
};
