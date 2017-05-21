/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQPRINTPREVIEWDIALOG_H
#define SLOTSQPRINTPREVIEWDIALOG_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QPrintPreviewDialog>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQPrintPreviewDialog: public QObject
{
  Q_OBJECT
  public:
  SlotsQPrintPreviewDialog(QObject *parent = 0);
  ~SlotsQPrintPreviewDialog();
  public slots:
  void paintRequested ( QPrinter * printer );
};

#endif // SLOTSQPRINTPREVIEWDIALOG_H
