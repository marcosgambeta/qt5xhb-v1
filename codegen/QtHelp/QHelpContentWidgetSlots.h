%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQHelpContentWidget: public QObject
{
  Q_OBJECT
  public:
  SlotsQHelpContentWidget(QObject *parent = 0);
  ~SlotsQHelpContentWidget();
  public slots:
  void linkActivated ( const QUrl & link );
};
