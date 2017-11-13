/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQNETWORKCONFIGURATIONMANAGER_H
#define SLOTSQNETWORKCONFIGURATIONMANAGER_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QNetworkConfigurationManager>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQNetworkConfigurationManager: public QObject
{
  Q_OBJECT
  public:
  SlotsQNetworkConfigurationManager(QObject *parent = 0);
  ~SlotsQNetworkConfigurationManager();
  public slots:
  void updateCompleted ();
};

#endif // SLOTSQNETWORKCONFIGURATIONMANAGER_H
