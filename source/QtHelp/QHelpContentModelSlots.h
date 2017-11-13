/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQHELPCONTENTMODEL_H
#define SLOTSQHELPCONTENTMODEL_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QHelpContentModel>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQHelpContentModel: public QObject
{
  Q_OBJECT
  public:
  SlotsQHelpContentModel(QObject *parent = 0);
  ~SlotsQHelpContentModel();
  public slots:
  void contentsCreated ();
  void contentsCreationStarted ();
};

#endif // SLOTSQHELPCONTENTMODEL_H
