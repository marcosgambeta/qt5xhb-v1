%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes=5,3,0

$beginSlotsClass
  void aboutToClose();
  void connected();
  void disconnected();
  void stateChanged(QAbstractSocket::SocketState state);
  void proxyAuthenticationRequired(const QNetworkProxy &proxy, QAuthenticator *pAuthenticator);
  void readChannelFinished();
  void textFrameReceived(const QString &frame, bool isLastFrame);
  void binaryFrameReceived(const QByteArray &frame, bool isLastFrame);
  void textMessageReceived(const QString &message);
  void binaryMessageReceived(const QByteArray &message);
  void error(QAbstractSocket::SocketError error);
  void pong(quint64 elapsedTime, const QByteArray &payload);
  void bytesWritten(qint64 bytes);
  void sslErrors(const QList<QSslError> &errors);
$endSlotsClass
