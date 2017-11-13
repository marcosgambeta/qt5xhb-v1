/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQPRINTDIALOG_H
#define SLOTSQPRINTDIALOG_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QPrintDialog>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQPrintDialog: public QObject
{
  Q_OBJECT
  public:
  SlotsQPrintDialog(QObject *parent = 0);
  ~SlotsQPrintDialog();
  public slots:
  void accepted ( QPrinter * printer );
};

#endif // SLOTSQPRINTDIALOG_H
