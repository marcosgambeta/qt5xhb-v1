%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQDataWidgetMapper: public QObject
{
  Q_OBJECT
  public:
  SlotsQDataWidgetMapper(QObject *parent = 0);
  ~SlotsQDataWidgetMapper();
  public slots:
  void currentIndexChanged ( int index );
};
