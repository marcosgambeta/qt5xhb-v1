/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQPROCESS_H
#define SLOTSQPROCESS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QProcess>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQProcess: public QObject
{
  Q_OBJECT
  public:
  SlotsQProcess(QObject *parent = 0);
  ~SlotsQProcess();
  public slots:
  void error ( QProcess::ProcessError error );
  void finished ( int exitCode, QProcess::ExitStatus exitStatus );
  void readyReadStandardError ();
  void readyReadStandardOutput ();
  void started ();
  void stateChanged ( QProcess::ProcessState newState );
};

#endif // SLOTSQPROCESS_H
