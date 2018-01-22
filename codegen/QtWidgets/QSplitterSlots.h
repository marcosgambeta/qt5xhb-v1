%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQSplitter: public QObject
{
  Q_OBJECT
  public:
  SlotsQSplitter(QObject *parent = 0);
  ~SlotsQSplitter();
  public slots:
  void splitterMoved ( int pos, int index );
};
