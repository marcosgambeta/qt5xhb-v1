%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQHelpSearchResultWidget: public QObject
{
  Q_OBJECT
  public:
  SlotsQHelpSearchResultWidget(QObject *parent = 0);
  ~SlotsQHelpSearchResultWidget();
  public slots:
  void requestShowLink ( const QUrl & link );
};
