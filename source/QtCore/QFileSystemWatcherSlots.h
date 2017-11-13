/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQFILESYSTEMWATCHER_H
#define SLOTSQFILESYSTEMWATCHER_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QFileSystemWatcher>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQFileSystemWatcher: public QObject
{
  Q_OBJECT
  public:
  SlotsQFileSystemWatcher(QObject *parent = 0);
  ~SlotsQFileSystemWatcher();
  public slots:
  void directoryChanged(const QString & path);
  void fileChanged(const QString & path);
};

#endif // SLOTSQFILESYSTEMWATCHER_H
