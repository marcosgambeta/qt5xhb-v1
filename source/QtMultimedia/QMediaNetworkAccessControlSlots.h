/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQMEDIANETWORKACCESSCONTROL_H
#define SLOTSQMEDIANETWORKACCESSCONTROL_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QMediaNetworkAccessControl>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQMediaNetworkAccessControl: public QObject
{
  Q_OBJECT
  public:
  SlotsQMediaNetworkAccessControl(QObject *parent = 0);
  ~SlotsQMediaNetworkAccessControl();
  public slots:
  void configurationChanged(const QNetworkConfiguration & configuration);
};

#endif // SLOTSQMEDIANETWORKACCESSCONTROL_H
