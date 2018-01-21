/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQINPUTDIALOG_H
#define SLOTSQINPUTDIALOG_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QInputDialog>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQInputDialog: public QObject
{
  Q_OBJECT
  public:
  SlotsQInputDialog(QObject *parent = 0);
  ~SlotsQInputDialog();
  public slots:
  void doubleValueChanged ( double value );
  void doubleValueSelected ( double value );
  void intValueChanged ( int value );
  void intValueSelected ( int value );
  void textValueChanged ( const QString & text );
  void textValueSelected ( const QString & text );
};

#endif // SLOTSQINPUTDIALOG_H
