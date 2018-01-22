/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQOBJECT_H
#define SLOTSQOBJECT_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QObject>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQObject: public QObject
{
  Q_OBJECT
  public:
  SlotsQObject(QObject *parent = 0);
  ~SlotsQObject();
  public slots:
  void destroyed ( QObject * obj = 0 );
  void objectNameChanged(const QString & objectName);
};

#endif // SLOTSQOBJECT_H
