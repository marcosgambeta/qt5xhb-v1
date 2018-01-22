%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQToolBox: public QObject
{
  Q_OBJECT
  public:
  SlotsQToolBox(QObject *parent = 0);
  ~SlotsQToolBox();
  public slots:
  void currentChanged ( int index );
};
