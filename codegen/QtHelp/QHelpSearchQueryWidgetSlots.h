%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQHelpSearchQueryWidget: public QObject
{
  Q_OBJECT
  public:
  SlotsQHelpSearchQueryWidget(QObject *parent = 0);
  ~SlotsQHelpSearchQueryWidget();
  public slots:
  void search ();
};
