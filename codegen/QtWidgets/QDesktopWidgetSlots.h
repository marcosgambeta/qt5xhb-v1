%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQDesktopWidget: public QObject
{
  Q_OBJECT
  public:
  SlotsQDesktopWidget(QObject *parent = 0);
  ~SlotsQDesktopWidget();
  public slots:
  void resized ( int screen );
  void screenCountChanged ( int newCount );
  void workAreaResized ( int screen );
};
