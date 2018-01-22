%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQMainWindow: public QObject
{
  Q_OBJECT
  public:
  SlotsQMainWindow(QObject *parent = 0);
  ~SlotsQMainWindow();
  public slots:
  void iconSizeChanged ( const QSize & iconSize );
  void toolButtonStyleChanged ( Qt::ToolButtonStyle toolButtonStyle );
};
