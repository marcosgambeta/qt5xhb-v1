/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQSYSTEMTRAYICON_H
#define SLOTSQSYSTEMTRAYICON_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QSystemTrayIcon>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQSystemTrayIcon: public QObject
{
  Q_OBJECT
  public:
  SlotsQSystemTrayIcon(QObject *parent = 0);
  ~SlotsQSystemTrayIcon();
  public slots:
  void activated(QSystemTrayIcon::ActivationReason reason);
  void messageClicked();
};

#endif // SLOTSQSYSTEMTRAYICON_H
