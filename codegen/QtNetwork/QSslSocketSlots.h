%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
  void encrypted ();
  void encryptedBytesWritten ( qint64 written );
  void modeChanged ( QSslSocket::SslMode mode );
  void peerVerifyError ( const QSslError & error );
  void sslErrors ( const QList<QSslError> & errors );
$endSlotsClass
