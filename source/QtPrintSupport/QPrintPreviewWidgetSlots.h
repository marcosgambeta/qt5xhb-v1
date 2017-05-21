/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQPRINTPREVIEWWIDGET_H
#define SLOTSQPRINTPREVIEWWIDGET_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QPrintPreviewWidget>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQPrintPreviewWidget: public QObject
{
  Q_OBJECT
  public:
  SlotsQPrintPreviewWidget(QObject *parent = 0);
  ~SlotsQPrintPreviewWidget();
  public slots:
  void paintRequested ( QPrinter * printer );
  void previewChanged ();
};

#endif // SLOTSQPRINTPREVIEWWIDGET_H
