/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQABSTRACTSPINBOX_H
#define SLOTSQABSTRACTSPINBOX_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QAbstractSpinBox>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQAbstractSpinBox: public QObject
{
  Q_OBJECT
  public:
  SlotsQAbstractSpinBox(QObject *parent = 0);
  ~SlotsQAbstractSpinBox();
  public slots:
  void editingFinished ();
};

#endif // SLOTSQABSTRACTSPINBOX_H
