/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQWEBCHANNELABSTRACTTRANSPORT_H
#define SLOTSQWEBCHANNELABSTRACTTRANSPORT_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QWebChannelAbstractTransport>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQWebChannelAbstractTransport: public QObject
{
  Q_OBJECT
  public:
  SlotsQWebChannelAbstractTransport(QObject *parent = 0);
  ~SlotsQWebChannelAbstractTransport();
  public slots:
  void messageReceived(const QJsonObject &message, QWebChannelAbstractTransport *transport);
};

#endif // SLOTSQWEBCHANNELABSTRACTTRANSPORT_H
