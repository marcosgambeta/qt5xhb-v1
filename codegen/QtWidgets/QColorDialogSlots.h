/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQCOLORDIALOG_H
#define SLOTSQCOLORDIALOG_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QColorDialog>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQColorDialog: public QObject
{
  Q_OBJECT
  public:
  SlotsQColorDialog(QObject *parent = 0);
  ~SlotsQColorDialog();
  public slots:
  void colorSelected ( const QColor & color );
  void currentColorChanged ( const QColor & color );
};

#endif // SLOTSQCOLORDIALOG_H
