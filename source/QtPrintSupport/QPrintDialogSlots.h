/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

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
