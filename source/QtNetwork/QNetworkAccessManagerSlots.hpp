//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QNETWORKACCESSMANAGERSLOTS_H
#define QNETWORKACCESSMANAGERSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>
#include <QtNetwork/QNetworkReply>

#include <QtNetwork/QNetworkAccessManager>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QNetworkAccessManagerSlots : public QObject
{
  Q_OBJECT
public:
  QNetworkAccessManagerSlots(QObject *parent = 0);
  ~QNetworkAccessManagerSlots();
public slots:
  void proxyAuthenticationRequired(const QNetworkProxy &proxy, QAuthenticator *authenticator);
  void authenticationRequired(QNetworkReply *reply, QAuthenticator *authenticator);
  void finished(QNetworkReply *reply);
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
  void encrypted(QNetworkReply *reply);
#endif
  void sslErrors(QNetworkReply *reply, const QList<QSslError> &errors);
#if (QT_VERSION >= QT_VERSION_CHECK(5, 5, 0))
  void preSharedKeyAuthenticationRequired(QNetworkReply *reply, QSslPreSharedKeyAuthenticator *authenticator);
#endif
  void networkSessionConnected();
  void networkAccessibleChanged(QNetworkAccessManager::NetworkAccessibility accessible);
};

#endif // QNETWORKACCESSMANAGERSLOTS_H
