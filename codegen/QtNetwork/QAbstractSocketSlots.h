%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQAbstractSocket: public QObject
{
  Q_OBJECT
  public:
  SlotsQAbstractSocket(QObject *parent = 0);
  ~SlotsQAbstractSocket();
  public slots:
  void connected ();
  void disconnected ();
  void error ( QAbstractSocket::SocketError socketError );
  void hostFound ();
  void proxyAuthenticationRequired ( const QNetworkProxy & proxy, QAuthenticator * authenticator );
  void stateChanged ( QAbstractSocket::SocketState socketState );
};
