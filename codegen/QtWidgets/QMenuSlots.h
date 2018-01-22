%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQMenu: public QObject
{
  Q_OBJECT
  public:
  SlotsQMenu(QObject *parent = 0);
  ~SlotsQMenu();
  public slots:
  void aboutToHide ();
  void aboutToShow ();
  void hovered ( QAction * action );
  void triggered ( QAction * action );
};
