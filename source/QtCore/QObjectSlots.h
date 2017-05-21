/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

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
