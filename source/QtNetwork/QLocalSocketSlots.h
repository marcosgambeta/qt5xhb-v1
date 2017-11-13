/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQLOCALSOCKET_H
#define SLOTSQLOCALSOCKET_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QLocalSocket>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQLocalSocket: public QObject
{
  Q_OBJECT
  public:
  SlotsQLocalSocket(QObject *parent = 0);
  ~SlotsQLocalSocket();
  public slots:
  void connected ();
  void disconnected ();
  void error ( QLocalSocket::LocalSocketError socketError );
  void stateChanged ( QLocalSocket::LocalSocketState socketState );
};

#endif // SLOTSQLOCALSOCKET_H
