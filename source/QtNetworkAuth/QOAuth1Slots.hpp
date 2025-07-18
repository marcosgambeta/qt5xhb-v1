//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QOAUTH1SLOTS_H
#define QOAUTH1SLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
#include <QtNetworkAuth/QOAuth1>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QOAuth1Slots : public QObject
{
  Q_OBJECT
public:
  QOAuth1Slots(QObject *parent = 0);
  ~QOAuth1Slots();
public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
  void clientSharedSecretChanged(const QString &credential);
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
  void signatureMethodChanged(QOAuth1::SignatureMethod method);
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
  void temporaryCredentialsUrlChanged(const QUrl &url);
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
  void tokenCredentialsUrlChanged(const QUrl &url);
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 10, 0))
  void tokenSecretChanged(const QString &token);
#endif
};

#endif // QOAUTH1SLOTS_H
