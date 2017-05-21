/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

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
