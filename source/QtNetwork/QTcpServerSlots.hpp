//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QTCPSERVERSLOTS_H
#define QTCPSERVERSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtNetwork/QTcpServer>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QTcpServerSlots : public QObject
{
  Q_OBJECT
public:
  QTcpServerSlots(QObject *parent = 0);
  ~QTcpServerSlots();
public slots:
  void acceptError(QAbstractSocket::SocketError socketError);
  void newConnection();
};

#endif // QTCPSERVERSLOTS_H
