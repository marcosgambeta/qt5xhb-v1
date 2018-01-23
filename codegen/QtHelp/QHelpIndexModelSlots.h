/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQHELPINDEXMODEL_H
#define SLOTSQHELPINDEXMODEL_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QHelpIndexModel>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQHelpIndexModel: public QObject
{
  Q_OBJECT
  public:
  SlotsQHelpIndexModel(QObject *parent = 0);
  ~SlotsQHelpIndexModel();
  public slots:
  void indexCreated ();
  void indexCreationStarted ();
};

#endif // SLOTSQHELPINDEXMODEL_H
