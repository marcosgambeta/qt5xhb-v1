//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QSSLSOCKETSLOTS_H
#define QSSLSOCKETSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtNetwork/QSslSocket>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QSslSocketSlots : public QObject
{
  Q_OBJECT
public:
  QSslSocketSlots(QObject *parent = 0);
  ~QSslSocketSlots();
public slots:
  void encrypted();
  void encryptedBytesWritten(qint64 written);
  void modeChanged(QSslSocket::SslMode mode);
  void peerVerifyError(const QSslError &error);
#if (QT_VERSION >= QT_VERSION_CHECK(5, 5, 0))
  void preSharedKeyAuthenticationRequired(QSslPreSharedKeyAuthenticator *authenticator);
#endif
  void sslErrors(const QList<QSslError> &errors);
};

#endif // QSSLSOCKETSLOTS_H
