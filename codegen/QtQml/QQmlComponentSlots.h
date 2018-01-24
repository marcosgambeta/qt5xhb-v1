/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQQMLCOMPONENT_H
#define SLOTSQQMLCOMPONENT_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QQmlComponent>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQQmlComponent: public QObject
{
  Q_OBJECT
  public:
  SlotsQQmlComponent(QObject *parent = 0);
  ~SlotsQQmlComponent();
  public slots:
  void progressChanged(qreal progress);
  void statusChanged(QQmlComponent::Status status);
};

#endif // SLOTSQQMLCOMPONENT_H
