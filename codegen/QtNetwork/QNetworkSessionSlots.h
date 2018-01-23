%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQNetworkSession: public QObject
{
  Q_OBJECT
  public:
  SlotsQNetworkSession(QObject *parent = 0);
  ~SlotsQNetworkSession();
  public slots:
  void closed ();
  void error ( QNetworkSession::SessionError error );
  void newConfigurationActivated ();
  void opened ();
  void preferredConfigurationChanged ( const QNetworkConfiguration & config, bool isSeamless );
  void stateChanged ( QNetworkSession::State state );
};
