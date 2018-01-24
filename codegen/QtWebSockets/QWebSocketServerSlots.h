%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes=5,3,0

$beginSlotsClass
  void acceptError(QAbstractSocket::SocketError socketError);
  void serverError(QWebSocketProtocol::CloseCode closeCode);
  void originAuthenticationRequired(QWebSocketCorsAuthenticator *pAuthenticator);
  void newConnection();
  void peerVerifyError(const QSslError &error);
  void sslErrors(const QList<QSslError> &errors);
  void closed();
$endSlotsClass
