/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

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
