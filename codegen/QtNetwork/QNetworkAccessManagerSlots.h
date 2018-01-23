%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQNetworkAccessManager: public QObject
{
  Q_OBJECT
  public:
  SlotsQNetworkAccessManager(QObject *parent = 0);
  ~SlotsQNetworkAccessManager();
  public slots:
  void authenticationRequired ( QNetworkReply * reply, QAuthenticator * authenticator );
  void finished ( QNetworkReply * reply );
  void networkAccessibleChanged ( QNetworkAccessManager::NetworkAccessibility accessible );
  void proxyAuthenticationRequired ( const QNetworkProxy & proxy, QAuthenticator * authenticator );
};
