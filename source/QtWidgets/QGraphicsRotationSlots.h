/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQGRAPHICSROTATION_H
#define SLOTSQGRAPHICSROTATION_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QGraphicsRotation>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQGraphicsRotation: public QObject
{
  Q_OBJECT
  public:
  SlotsQGraphicsRotation(QObject *parent = 0);
  ~SlotsQGraphicsRotation();
  public slots:
  void angleChanged ();
  void axisChanged ();
  void originChanged ();
};

#endif // SLOTSQGRAPHICSROTATION_H
