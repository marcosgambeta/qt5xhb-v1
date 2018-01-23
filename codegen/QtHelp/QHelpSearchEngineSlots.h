%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQHelpSearchEngine: public QObject
{
  Q_OBJECT
  public:
  SlotsQHelpSearchEngine(QObject *parent = 0);
  ~SlotsQHelpSearchEngine();
  public slots:
  void indexingFinished ();
  void indexingStarted ();
  void searchingFinished ( int hits );
  void searchingStarted ();
};
