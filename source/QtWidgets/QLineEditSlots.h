/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQLINEEDIT_H
#define SLOTSQLINEEDIT_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QLineEdit>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQLineEdit: public QObject
{
  Q_OBJECT
  public:
  SlotsQLineEdit(QObject *parent = 0);
  ~SlotsQLineEdit();
  public slots:
  void cursorPositionChanged ( int iold, int inew );
  void editingFinished ();
  void returnPressed ();
  void selectionChanged ();
  void textChanged ( const QString & text );
  void textEdited ( const QString & text );
};

#endif // SLOTSQLINEEDIT_H
