/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

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
