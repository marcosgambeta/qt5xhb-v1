/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQPROGRESSDIALOG_H
#define SLOTSQPROGRESSDIALOG_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QProgressDialog>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQProgressDialog: public QObject
{
  Q_OBJECT
  public:
  SlotsQProgressDialog(QObject *parent = 0);
  ~SlotsQProgressDialog();
  public slots:
  void canceled ();
};

#endif // SLOTSQPROGRESSDIALOG_H
