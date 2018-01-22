%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQStackedLayout: public QObject
{
  Q_OBJECT
  public:
  SlotsQStackedLayout(QObject *parent = 0);
  ~SlotsQStackedLayout();
  public slots:
  void setCurrentIndex ( int index );
  void setCurrentWidget ( QWidget * widget );
};
