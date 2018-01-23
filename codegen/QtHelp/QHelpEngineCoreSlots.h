%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQHelpEngineCore: public QObject
{
  Q_OBJECT
  public:
  SlotsQHelpEngineCore(QObject *parent = 0);
  ~SlotsQHelpEngineCore();
  public slots:
  void currentFilterChanged ( const QString & newFilter );
  void setupFinished ();
  void setupStarted ();
  void warning ( const QString & msg );
};
