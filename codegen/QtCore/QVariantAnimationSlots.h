/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQVARIANTANIMATION_H
#define SLOTSQVARIANTANIMATION_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QVariantAnimation>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQVariantAnimation: public QObject
{
  Q_OBJECT
  public:
  SlotsQVariantAnimation(QObject *parent = 0);
  ~SlotsQVariantAnimation();
  public slots:
  void valueChanged ( const QVariant & value );
};

#endif // SLOTSQVARIANTANIMATION_H
