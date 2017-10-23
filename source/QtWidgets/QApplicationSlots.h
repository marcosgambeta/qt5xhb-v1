/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQAPPLICATION_H
#define SLOTSQAPPLICATION_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QApplication>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQApplication: public QObject
{
  Q_OBJECT
  public:
  SlotsQApplication(QObject *parent = 0);
  ~SlotsQApplication();
  public slots:
  void aboutToReleaseGpuResources ();
  void aboutToUseGpuResources ();
  void commitDataRequest ( QSessionManager & manager );
  void focusChanged ( QWidget * old, QWidget * now );
  void fontDatabaseChanged ();
  void lastWindowClosed ();
  void saveStateRequest ( QSessionManager & manager );
};

#endif // SLOTSQAPPLICATION_H
