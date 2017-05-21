/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQSSLSOCKET_H
#define SLOTSQSSLSOCKET_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QSslSocket>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQSslSocket: public QObject
{
  Q_OBJECT
  public:
  SlotsQSslSocket(QObject *parent = 0);
  ~SlotsQSslSocket();
  public slots:
  void encrypted ();
  void encryptedBytesWritten ( qint64 written );
  void modeChanged ( QSslSocket::SslMode mode );
  void peerVerifyError ( const QSslError & error );
  void sslErrors ( const QList<QSslError> & errors );
};

#endif // SLOTSQSSLSOCKET_H
