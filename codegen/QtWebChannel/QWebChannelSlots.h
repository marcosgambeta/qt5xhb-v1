/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQWEBCHANNEL_H
#define SLOTSQWEBCHANNEL_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QWebChannel>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQWebChannel: public QObject
{
  Q_OBJECT
  public:
  SlotsQWebChannel(QObject *parent = 0);
  ~SlotsQWebChannel();
  public slots:
  void blockUpdatesChanged(bool block);
};

#endif // SLOTSQWEBCHANNEL_H
