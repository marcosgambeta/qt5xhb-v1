%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQActionGroup: public QObject
{
  Q_OBJECT
  public:
  SlotsQActionGroup(QObject *parent = 0);
  ~SlotsQActionGroup();
  public slots:
  void hovered ( QAction * action );
  void triggered ( QAction * action );
};
