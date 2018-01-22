%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQMenuBar: public QObject
{
  Q_OBJECT
  public:
  SlotsQMenuBar(QObject *parent = 0);
  ~SlotsQMenuBar();
  public slots:
  void hovered ( QAction * action );
  void triggered ( QAction * action );
};
