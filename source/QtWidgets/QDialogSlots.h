/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQDIALOG_H
#define SLOTSQDIALOG_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QDialog>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQDialog: public QObject
{
  Q_OBJECT
  public:
  SlotsQDialog(QObject *parent = 0);
  ~SlotsQDialog();
  public slots:
  void accepted ();
  void finished ( int result );
  void rejected ();
};

#endif // SLOTSQDIALOG_H
