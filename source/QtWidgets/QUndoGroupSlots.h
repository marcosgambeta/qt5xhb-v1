/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQUNDOGROUP_H
#define SLOTSQUNDOGROUP_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QUndoGroup>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQUndoGroup: public QObject
{
  Q_OBJECT
  public:
  SlotsQUndoGroup(QObject *parent = 0);
  ~SlotsQUndoGroup();
  public slots:
  void activeStackChanged(QUndoStack * stack);
  void canRedoChanged(bool canRedo);
  void canUndoChanged(bool canUndo);
  void cleanChanged(bool clean);
  void indexChanged(int idx);
  void redoTextChanged(const QString & redoText);
  void undoTextChanged(const QString & undoText);
};

#endif // SLOTSQUNDOGROUP_H
