/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQINTVALIDATOR_H
#define SLOTSQINTVALIDATOR_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QIntValidator>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQIntValidator: public QObject
{
  Q_OBJECT
  public:
  SlotsQIntValidator(QObject *parent = 0);
  ~SlotsQIntValidator();
  public slots:
  void changed();
};

#endif // SLOTSQINTVALIDATOR_H
