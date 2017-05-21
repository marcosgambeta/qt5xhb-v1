/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

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
